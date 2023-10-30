class Administrativo::UnidadeHospitalar
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String

  validates :nome, presence: true, uniqueness: true
  
  before_save :colocar_nome_em_caixa_alta

  private
    def colocar_nome_em_caixa_alta
      nome.upcase!
    end
end
