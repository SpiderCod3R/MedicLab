require 'net/http'
require 'net/https' # for ruby 1.8.7
require 'json'

class BRPopulate

  attr_accessor :estados, :cidades, :regiao

  def initialize
    @estados = JSON.parse(File.read('lib/br_populate/estados.json'))
  end


  def capital?(cidade, estado)
    cidade["nome"] == estado["capital"]
  end

  def populate
    @estados.each do |estado|
      regiao_obj  = Brasil::Regiao.find_or_create_by(:nome => estado["regiao"])
      estado_obj   = Brasil::Estado.new(:acronym => estado["acronym"], :nome => estado["nome"], :regiao => regiao_obj)
      estado_obj.save

      estado["cidades"].each do |cidade|
        c = Brasil::Cidade.new
        c.nome = cidade["nome"]
        c.estado = estado_obj
        c.capital = capital?(cidade, estado)
        c.save
	      puts "Adicionando a cidade #{c.nome} ao estado #{c.estado.nome}"
      end
    end
  end
end

brpopulate = BRPopulate.new
brpopulate.populate
