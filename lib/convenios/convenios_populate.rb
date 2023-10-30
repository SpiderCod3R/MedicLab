require 'net/http'
require 'net/https' # for ruby 1.8.7
require 'json'

class ConvenioPopulate

  attr_accessor :convenios

  def initialize
    @convenios = JSON.parse(File.read('lib/convenios/convenios.json'))
  end

  def populate
    @convenios.each do |convenio|
      obj_convenio   = Administrativo::Convenio.new(
        intercambio: convenio["intercambio"], 
        nome: convenio["nome"], 
        razao_social: convenio["razao_social"], 
        email: convenio["email"], 
        cnpj: convenio["cnpj"], 
        inscricao_estadual: convenio["inscricao_estadual"], 
        telefone: convenio["telefone"], 
        cep: convenio["cep"], 
        endereco: convenio["endereco"], 
        complemento: convenio["complemento"], 
        valor_km_com_medico: convenio["valor_km_com_medico"], 
        valor_km_sem_medico: convenio["valor_km_sem_medico"], 
        taxa_retorno: convenio["taxa_retorno"], 
        hora_espera: convenio["hora_espera"], 
        valor_interhospitalar_com_medico: convenio["valor_interhospitalar_com_medico"], 
        valor_interhospitalar_sem_medico: convenio["valor_interhospitalar_sem_medico"], 
        codigo_adicional: convenio["codigo_adicional"], 
        codigo_departamento: convenio["codigo_departamento"], 
        valor_km: convenio["valor_km"], 
        taxa_retorno_com_medico: convenio["taxa_retorno_com_medico"], 
        taxa_retorno_sem_medico: convenio["taxa_retorno_sem_medico"], 
      )
      if obj_convenio.save
        puts "Convenio #{obj_convenio.nome} importado com sucesso"
      end
    end
  end
end


