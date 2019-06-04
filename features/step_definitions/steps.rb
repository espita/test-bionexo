Dado("que eu logo no sistema") do
   @login = Login.new
   @login.logar
end

Dado("que eu acesse a tela de cadastro de produtos") do
  @cadastro_page = Produtos.new
  @cadastro_page.page_produto
end

Dado("Eu preencho o campo Nome") do
  @preencher_nome = Produtos.new
  @preencher_nome.cadastrar_produto_invalido
end

Dado("Eu clicar no botão criar produto") do
  @preencher_nome = Produtos.new
  @preencher_nome.clicar_create
end

Então("Eu vizualizo a mensagem de erro") do
  expect(page).to have_no_content('Nome é um campo obrigatório')
end

Dado("Eu preenho os campos obrigatórios {string}, {string}, {string}, {string}, {string}") do |string, string2, string3, string4, string5|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado("Eu selecionar tipo {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado("Eu selecionar status {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Então("O Produto é cadastrado com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end
