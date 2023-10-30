class Administrativo::Colaboradores::FuncionarioDocumento
  include Mongoid::Document
  include Mongoid::Timestamps
  field :tipo_documento, type: String
  field :valor, type: String

  belongs_to :funcionario, class_name: "Administrativo::Colaboradores::Funcionario"
end
