class Administrativo::ConveniosController < ApplicationController
  before_action :set_administrativo_convenio, only: %i[ show edit update destroy ]

  # GET /administrativo/convenios or /administrativo/convenios.json
  def index
    @administrativo_convenios = Administrativo::Convenio.all
  end

  # GET /administrativo/convenios/1 or /administrativo/convenios/1.json
  def show
  end

  # GET /administrativo/convenios/new
  def new
    @administrativo_convenio = Administrativo::Convenio.new
  end

  # GET /administrativo/convenios/1/edit
  def edit
  end

  # POST /administrativo/convenios or /administrativo/convenios.json
  def create
    @administrativo_convenio = Administrativo::Convenio.new(administrativo_convenio_params)

    respond_to do |format|
      if @administrativo_convenio.save
        format.html { redirect_to administrativo_convenio_url(@administrativo_convenio), notice: "Convenio was successfully created." }
        format.json { render :show, status: :created, location: @administrativo_convenio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @administrativo_convenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrativo/convenios/1 or /administrativo/convenios/1.json
  def update
    respond_to do |format|
      if @administrativo_convenio.update(administrativo_convenio_params)
        format.html { redirect_to administrativo_convenio_url(@administrativo_convenio), notice: "Convenio was successfully updated." }
        format.json { render :show, status: :ok, location: @administrativo_convenio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @administrativo_convenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrativo/convenios/1 or /administrativo/convenios/1.json
  def destroy
    @administrativo_convenio.destroy!

    respond_to do |format|
      format.html { redirect_to administrativo_convenios_url, notice: "Convenio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrativo_convenio
      @administrativo_convenio = Administrativo::Convenio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def administrativo_convenio_params
      params.require(:administrativo_convenio).permit(:status, :intercambio, :nome, :razao_social, :email, :cnpj, :inscricao_estadual, :telefone, :cep, :endereco, :complemento, :valor_km_com_medico, :valor_km_sem_medico, :taxa_retorno, :hora_espera, :valor_interhospitalar_com_medico, :valor_interhospitalar_sem_medico, :codigo_adicional, :codigo_departamento, :valor_km, :taxa_retorno_com_medico, :taxa_retorno_sem_medico)
    end
end
