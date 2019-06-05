Dado("que eu logo no sistema") do
   @login = Login.new
   @login.logar
end

Dado("que eu acesse a tela de cadastro de produtos") do
  @cadastro_page = Produtos.new
  @cadastro_page.page_produto
end

Dado("Eu preencho o campo obrigatório {string} com o {string}") do |campo, valor|
  @preencher_nome = Produtos.new
  @preencher_nome.preencher_dados(campo,valor)
end

Dado("Eu clicar no botão criar produto") do
  @preencher_nome = Produtos.new
  @preencher_nome.clicar_create
end

Então("Eu não vizualizo a mensagem de erro {string}") do |mensagem|
  expect(page).to have_no_content(mensagem)
end

Então("Eu vizualizo as mensagens de erro {string}") do |mensagem|
  mensagem.split(",").each do |item|
    expect(page).to have_content(item)
  end
end

Dado("Eu preenho os campos obrigatórios {string}, {string}, {string}, {string}") do |nome, fabricante, detalhes, preco|
  @preencher_nome = Produtos.new
  @preencher_nome.preencher_dados("name",nome)
  @preencher_nome.preencher_dados("manufacturer",fabricante)
  @preencher_nome.preencher_dados("description",detalhes)
  @preencher_nome.preencher_dados("price",preco)
end

Dado("Eu crio um novo codigo") do
  @preencher_nome = Produtos.new
  code = SecureRandom.hex(10)
  @preencher_nome.preencher_dados("code",code)
end

# mat, med
Dado("Eu selecionar tipo {string}") do |tipo|
  @selecionar_combo = Produtos.new
  @selecionar_combo.select_from("product_kind", tipo)
end

#enable, disable
Dado("Eu selecionar status {string}") do |status|
  @selecionar_combo = Produtos.new
  @selecionar_combo.select_from("product_status", status)
end

Então("O Produto é cadastrado com sucesso") do
  assert_text 'Produto criado com sucesso.'
end
