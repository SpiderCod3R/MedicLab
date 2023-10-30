class Brasil::Estado
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :acronym, type: String
  belongs_to :regiao
end
