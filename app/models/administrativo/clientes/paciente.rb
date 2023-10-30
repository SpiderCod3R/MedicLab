class Administrativo::Clientes::Paciente
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :telefone, type: String
  field :dtNnascimento, type: String
  field :sexo, type: String
  field :matricula_senha, type: String
  field :profissao, type: String
  
  belongs_to :convenio, class_name: "Administrativo::Convenio", foreign_key: "paciente_id"
  has_one :documento, class_name: "Administrativo::Clientes::PacienteDocumento", foreign_key: "paciente_id"
  has_one :endereco, class_name: "Administrativo::Clientes::PacienteEndereco", foreign_key: "paciente_id"


  before_save :colocar_nome_em_caixa_alta

  private
    def colocar_nome_em_caixa_alta
      nome.upcase!
    end
end
