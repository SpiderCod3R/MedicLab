class Administrativo::Clientes::PacienteEndereco
  include Mongoid::Document
  include Mongoid::Timestamps
  field :endereco, type: String
  field :bairro, type: String
  belongs_to :cidade
  belongs_to :estado
  belongs_to :paciente, class_name: "Administrativo::Clientes::Paciente"
end
