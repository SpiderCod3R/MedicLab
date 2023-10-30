class Brasil::Cidade
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :capital, type: Mongoid::Boolean
  belongs_to :estado
end
