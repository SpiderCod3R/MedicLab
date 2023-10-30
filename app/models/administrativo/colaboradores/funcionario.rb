class Administrativo::Colaboradores::Funcionario
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :funcao, type: String

  validates :nome, :funcao, presence: true
  validates :nome, uniqueness: true

  has_one :documento, class_name: "Administrativo::Colaboradores::FuncionarioDocumento"
  
  before_save :colocar_nome_em_caixa_alta

  private
    def colocar_nome_em_caixa_alta
      nome.upcase!
    end
end
