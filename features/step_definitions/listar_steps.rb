Dado("que eu acesse a tela de listar produtos") do
  @listar_page = Produtos.new
  @listar_page.page_listar_produto
end

Então("devo visualizar as informações principais dos produtos") do
     msg = 'Nome,Tipo,Fabricante,Status'
     msg.split(",").each do |msg|
       expect(page).to have_content(msg)
  end
end

Então("eu visualizo a quantidade máxima de {int} registro") do |int|
      @count_produto = Produtos.new
      @count_produto.count_by(int)
end

Então("eu clicar na link próxima página") do
  @proxima_pagina = Produtos.new
  @proxima_pagina.link_proxima_pagina
end

Dado("eu clicar em um produto") do
  @editar_produto = Produtos.new
  @editar_produto.clicar_produto
end

Dado("eu editar os campos do produto") do
  @preencher_nome = Produtos.new
  @preencher_nome.preencher_dados('name',  Faker::FunnyName.name)
  @preencher_nome.preencher_dados('manufacturer', Faker::Company.industry)
  @preencher_nome.preencher_dados('description', Faker::ChuckNorris.fact)
  @preencher_nome.preencher_dados('price', Faker::Number.decimal(2))
  @preencher_nome.preencher_dados('code', Faker::Number.number(7))
end

Dado("eu clicar no botão atualizar produtos") do
   @atualizar_produto = Produtos.new
   @atualizar_produto.clicar_atualizar_produto
end

Então("o produto é atualizado com sucesso") do
  assert_text 'Produto atualizado com sucesso.'
end
