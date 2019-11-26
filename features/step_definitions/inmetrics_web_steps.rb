Dado("que acesso a home do site da Inmetrics") do
  $inmetrics.home.load
  expect(page.title).to eql get_test_data('web_data title inmetrics')
end

Quando("desço até a sessão de {string}") do |sessao|
  $inmetrics.home.wait_until_h2_carreiras_session_visible
  scroll_to sessao.eql?('Carreiras') ? $inmetrics.home.h2_carreiras_session : $inmetrics.home.div_quem_somos
end

Quando("clico no link {string}") do |link|
  if link.eql?('confira nossas vagas')
    $inmetrics.home.a_vagas.click
  else
    $inmetrics.home.a_produtos.click
  end
end

Então("validar que é encaminhado para cenário {string}") do |tipo|
  if tipo.eql?('positivo')
    expect(page.title).to eql get_test_data('web_data title gupy')
  else
    expect(page.title).to eql get_test_data('web_data title inmetrics')
  end
end