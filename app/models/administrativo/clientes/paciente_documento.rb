class Administrativo::Clientes::PacienteDocumento
  include Mongoid::Document
  include Mongoid::Timestamps
  field :tipo_documento, type: String
  field :nr_documento, type: String
  belongs_to :paciente, class_name: "Administrativo::Clientes::Paciente"
end
