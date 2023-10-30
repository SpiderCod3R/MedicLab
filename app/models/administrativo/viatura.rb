class Administrativo::Viatura
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :numero, type: String
  field :placa, type: String

  before_save :colocar_nome_em_caixa_alta

  validates :nome, :numero, :placa, presence: true, uniqueness: true

  def viatura_descricao
    if numero.present? and descricao.present? and placa.present?
        "#{numero} - #{descricao} - #{placa}"
    elsif numero.present? and descricao.present?
        "#{numero} - #{descricao}"
    elsif numero.present? and placa.present?
        "#{numero} - #{placa}"
    elsif descricao.present? and placa.present?
        " #{descricao} - #{placa} "
    end
  end

  def self.search(resource)
    busca = self.all
    busca = busca.where(numero: resource[:numero]) if resource[:numero].present?
    busca = busca.where("`placa` LIKE ?", "%#{resource[:placa]}%") if resource[:placa].present?
    return busca
  end

  private
    def colocar_nome_em_caixa_alta
      nome.upcase!
    end
end
