require "application_system_test_case"

class Administrativo::ConveniosTest < ApplicationSystemTestCase
  setup do
    @administrativo_convenio = administrativo_convenios(:one)
  end

  test "visiting the index" do
    visit administrativo_convenios_url
    assert_selector "h1", text: "Convenios"
  end

  test "should create convenio" do
    visit administrativo_convenios_url
    click_on "New convenio"

    fill_in "Cep", with: @administrativo_convenio.cep
    fill_in "Cnpj", with: @administrativo_convenio.cnpj
    fill_in "Codigo adicional", with: @administrativo_convenio.codigo_adicional
    fill_in "Codigo departamento", with: @administrativo_convenio.codigo_departamento
    fill_in "Complemento", with: @administrativo_convenio.complemento
    fill_in "Email", with: @administrativo_convenio.email
    fill_in "Endereco", with: @administrativo_convenio.endereco
    fill_in "Hora espera", with: @administrativo_convenio.hora_espera
    fill_in "Inscricao estadual", with: @administrativo_convenio.inscricao_estadual
    check "Intercambio" if @administrativo_convenio.intercambio
    fill_in "Nome", with: @administrativo_convenio.nome
    fill_in "Razao social", with: @administrativo_convenio.razao_social
    fill_in "Status", with: @administrativo_convenio.status
    fill_in "Taxa retorno", with: @administrativo_convenio.taxa_retorno
    fill_in "Taxa retorno com medico", with: @administrativo_convenio.taxa_retorno_com_medico
    fill_in "Taxa retorno sem medico", with: @administrativo_convenio.taxa_retorno_sem_medico
    fill_in "Telefone", with: @administrativo_convenio.telefone
    fill_in "Valor interhospitalar com medico", with: @administrativo_convenio.valor_interhospitalar_com_medico
    fill_in "Valor interhospitalar sem medico", with: @administrativo_convenio.valor_interhospitalar_sem_medico
    fill_in "Valor km", with: @administrativo_convenio.valor_km
    fill_in "Valor km com medico", with: @administrativo_convenio.valor_km_com_medico
    fill_in "Valor km sem medico", with: @administrativo_convenio.valor_km_sem_medico
    click_on "Create Convenio"

    assert_text "Convenio was successfully created"
    click_on "Back"
  end

  test "should update Convenio" do
    visit administrativo_convenio_url(@administrativo_convenio)
    click_on "Edit this convenio", match: :first

    fill_in "Cep", with: @administrativo_convenio.cep
    fill_in "Cnpj", with: @administrativo_convenio.cnpj
    fill_in "Codigo adicional", with: @administrativo_convenio.codigo_adicional
    fill_in "Codigo departamento", with: @administrativo_convenio.codigo_departamento
    fill_in "Complemento", with: @administrativo_convenio.complemento
    fill_in "Email", with: @administrativo_convenio.email
    fill_in "Endereco", with: @administrativo_convenio.endereco
    fill_in "Hora espera", with: @administrativo_convenio.hora_espera
    fill_in "Inscricao estadual", with: @administrativo_convenio.inscricao_estadual
    check "Intercambio" if @administrativo_convenio.intercambio
    fill_in "Nome", with: @administrativo_convenio.nome
    fill_in "Razao social", with: @administrativo_convenio.razao_social
    fill_in "Status", with: @administrativo_convenio.status
    fill_in "Taxa retorno", with: @administrativo_convenio.taxa_retorno
    fill_in "Taxa retorno com medico", with: @administrativo_convenio.taxa_retorno_com_medico
    fill_in "Taxa retorno sem medico", with: @administrativo_convenio.taxa_retorno_sem_medico
    fill_in "Telefone", with: @administrativo_convenio.telefone
    fill_in "Valor interhospitalar com medico", with: @administrativo_convenio.valor_interhospitalar_com_medico
    fill_in "Valor interhospitalar sem medico", with: @administrativo_convenio.valor_interhospitalar_sem_medico
    fill_in "Valor km", with: @administrativo_convenio.valor_km
    fill_in "Valor km com medico", with: @administrativo_convenio.valor_km_com_medico
    fill_in "Valor km sem medico", with: @administrativo_convenio.valor_km_sem_medico
    click_on "Update Convenio"

    assert_text "Convenio was successfully updated"
    click_on "Back"
  end

  test "should destroy Convenio" do
    visit administrativo_convenio_url(@administrativo_convenio)
    click_on "Destroy this convenio", match: :first

    assert_text "Convenio was successfully destroyed"
  end
end
