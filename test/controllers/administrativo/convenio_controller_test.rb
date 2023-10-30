require "test_helper"

class Administrativo::ConvenioControllerTest < ActionDispatch::IntegrationTest
  test "should get status:string" do
    get administrativo_convenio_status:string_url
    assert_response :success
  end

  test "should get intercambio:boolean" do
    get administrativo_convenio_intercambio:boolean_url
    assert_response :success
  end

  test "should get nome:string" do
    get administrativo_convenio_nome:string_url
    assert_response :success
  end

  test "should get razao_social:string" do
    get administrativo_convenio_razao_social:string_url
    assert_response :success
  end

  test "should get email:string" do
    get administrativo_convenio_email:string_url
    assert_response :success
  end

  test "should get cnpj" do
    get administrativo_convenio_cnpj_url
    assert_response :success
  end

  test "should get inscricao_estadual" do
    get administrativo_convenio_inscricao_estadual_url
    assert_response :success
  end

  test "should get telefone" do
    get administrativo_convenio_telefone_url
    assert_response :success
  end

  test "should get cep" do
    get administrativo_convenio_cep_url
    assert_response :success
  end

  test "should get endereco" do
    get administrativo_convenio_endereco_url
    assert_response :success
  end

  test "should get complemento" do
    get administrativo_convenio_complemento_url
    assert_response :success
  end

  test "should get valor_km_com_medico:decimal" do
    get administrativo_convenio_valor_km_com_medico:decimal_url
    assert_response :success
  end

  test "should get valor_km_sem_medico:decimal" do
    get administrativo_convenio_valor_km_sem_medico:decimal_url
    assert_response :success
  end

  test "should get taxa_retorno:decimal" do
    get administrativo_convenio_taxa_retorno:decimal_url
    assert_response :success
  end

  test "should get hora_espera:decimal" do
    get administrativo_convenio_hora_espera:decimal_url
    assert_response :success
  end

  test "should get valor_interhospitalar_com_medico:decimal" do
    get administrativo_convenio_valor_interhospitalar_com_medico:decimal_url
    assert_response :success
  end

  test "should get valor_interhospitalar_sem_medico:string" do
    get administrativo_convenio_valor_interhospitalar_sem_medico:string_url
    assert_response :success
  end

  test "should get codigo_adicional:integer" do
    get administrativo_convenio_codigo_adicional:integer_url
    assert_response :success
  end

  test "should get codigo_departamento:integer" do
    get administrativo_convenio_codigo_departamento:integer_url
    assert_response :success
  end

  test "should get valor_km:decimal" do
    get administrativo_convenio_valor_km:decimal_url
    assert_response :success
  end

  test "should get taxa_retorno_com_medico:decimal" do
    get administrativo_convenio_taxa_retorno_com_medico:decimal_url
    assert_response :success
  end

  test "should get taxa_retorno_sem_medico:decimal" do
    get administrativo_convenio_taxa_retorno_sem_medico:decimal_url
    assert_response :success
  end
end
