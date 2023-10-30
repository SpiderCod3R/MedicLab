require "test_helper"

class Administrativo::ConveniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrativo_convenio = administrativo_convenios(:one)
  end

  test "should get index" do
    get administrativo_convenios_url
    assert_response :success
  end

  test "should get new" do
    get new_administrativo_convenio_url
    assert_response :success
  end

  test "should create administrativo_convenio" do
    assert_difference("Administrativo::Convenio.count") do
      post administrativo_convenios_url, params: { administrativo_convenio: { cep: @administrativo_convenio.cep, cnpj: @administrativo_convenio.cnpj, codigo_adicional: @administrativo_convenio.codigo_adicional, codigo_departamento: @administrativo_convenio.codigo_departamento, complemento: @administrativo_convenio.complemento, email: @administrativo_convenio.email, endereco: @administrativo_convenio.endereco, hora_espera: @administrativo_convenio.hora_espera, inscricao_estadual: @administrativo_convenio.inscricao_estadual, intercambio: @administrativo_convenio.intercambio, nome: @administrativo_convenio.nome, razao_social: @administrativo_convenio.razao_social, status: @administrativo_convenio.status, taxa_retorno: @administrativo_convenio.taxa_retorno, taxa_retorno_com_medico: @administrativo_convenio.taxa_retorno_com_medico, taxa_retorno_sem_medico: @administrativo_convenio.taxa_retorno_sem_medico, telefone: @administrativo_convenio.telefone, valor_interhospitalar_com_medico: @administrativo_convenio.valor_interhospitalar_com_medico, valor_interhospitalar_sem_medico: @administrativo_convenio.valor_interhospitalar_sem_medico, valor_km: @administrativo_convenio.valor_km, valor_km_com_medico: @administrativo_convenio.valor_km_com_medico, valor_km_sem_medico: @administrativo_convenio.valor_km_sem_medico } }
    end

    assert_redirected_to administrativo_convenio_url(Administrativo::Convenio.last)
  end

  test "should show administrativo_convenio" do
    get administrativo_convenio_url(@administrativo_convenio)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrativo_convenio_url(@administrativo_convenio)
    assert_response :success
  end

  test "should update administrativo_convenio" do
    patch administrativo_convenio_url(@administrativo_convenio), params: { administrativo_convenio: { cep: @administrativo_convenio.cep, cnpj: @administrativo_convenio.cnpj, codigo_adicional: @administrativo_convenio.codigo_adicional, codigo_departamento: @administrativo_convenio.codigo_departamento, complemento: @administrativo_convenio.complemento, email: @administrativo_convenio.email, endereco: @administrativo_convenio.endereco, hora_espera: @administrativo_convenio.hora_espera, inscricao_estadual: @administrativo_convenio.inscricao_estadual, intercambio: @administrativo_convenio.intercambio, nome: @administrativo_convenio.nome, razao_social: @administrativo_convenio.razao_social, status: @administrativo_convenio.status, taxa_retorno: @administrativo_convenio.taxa_retorno, taxa_retorno_com_medico: @administrativo_convenio.taxa_retorno_com_medico, taxa_retorno_sem_medico: @administrativo_convenio.taxa_retorno_sem_medico, telefone: @administrativo_convenio.telefone, valor_interhospitalar_com_medico: @administrativo_convenio.valor_interhospitalar_com_medico, valor_interhospitalar_sem_medico: @administrativo_convenio.valor_interhospitalar_sem_medico, valor_km: @administrativo_convenio.valor_km, valor_km_com_medico: @administrativo_convenio.valor_km_com_medico, valor_km_sem_medico: @administrativo_convenio.valor_km_sem_medico } }
    assert_redirected_to administrativo_convenio_url(@administrativo_convenio)
  end

  test "should destroy administrativo_convenio" do
    assert_difference("Administrativo::Convenio.count", -1) do
      delete administrativo_convenio_url(@administrativo_convenio)
    end

    assert_redirected_to administrativo_convenios_url
  end
end
