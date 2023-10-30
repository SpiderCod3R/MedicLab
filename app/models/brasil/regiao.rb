class Brasil::Regiao
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String

  has_and_belongs_to_many :estados, class_name: "Brasil::Estado"
  has_and_belongs_to_many :cidades, class_name: "Brasil::Cidade"
end
