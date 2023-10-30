class Administrativo::Convenio
  include Mongoid::Document
  include Mongoid::Timestamps
  field :status, type: String
  field :intercambio, type: Mongoid::Boolean
  field :nome, type: String
  field :razao_social, type: String
  field :email, type: String
  field :cnpj, type: String
  field :inscricao_estadual, type: String
  field :telefone, type: String
  field :cep, type: String
  field :endereco, type: String
  field :complemento, type: String
  field :valor_km_com_medico, type: BigDecimal
  field :valor_km_sem_medico, type: BigDecimal
  field :taxa_retorno, type: BigDecimal
  field :hora_espera, type: BigDecimal
  field :valor_interhospitalar_com_medico, type: BigDecimal
  field :valor_interhospitalar_sem_medico, type: String
  field :codigo_adicional, type: Integer
  field :codigo_departamento, type: Integer
  field :valor_km, type: BigDecimal
  field :taxa_retorno_com_medico, type: BigDecimal
  field :taxa_retorno_sem_medico, type: BigDecimal

  validates :status, :intercambio, presence: true, allow_blank: true
  validates :nome, :razao_social, :cnpj,
            :valor_km_sem_medico, :valor_km_com_medico,
            :taxa_retorno, :hora_espera,
            :valor_interhospitalar_com_medico,
            :valor_interhospitalar_sem_medico,
            presence: true
  
  before_create :inicializa_status
  before_save :colocar_nome_em_caixa_alta

  private
    def colocar_nome_em_caixa_alta
      nome.upcase!
    end

    def inicializa_status
      self.status = 'ATIVO'
    end
end
