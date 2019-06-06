# frozen_string_literal: true

class Produtos
  include RSpec::Mocks::ExampleMethods::ExpectHost
  include RSpec::Matchers
  include Capybara::DSL

  def page_produto
    click_link('Produtos')
    click_link('Novo Produto')
  end

  def page_listar_produto
    click_link('Produtos')
    click_link('Listar Produtos')
  end

  def preencher_dados(campo, valor)
    fill_in("product[#{campo}]", with: valor)
  end

  def clicar_criar_produto
    click_button('Create Product')
  end

  def select_from(id, value)
    page.find_by_id(id).find("option[value=#{value}]").select_option
  end

  def link_proxima_pagina
    click_link('Próximo')
  end

  def clicar_produto
    find('body > div > table > tbody > tr:nth-child(2)').click
end

  def clicar_atualizar_produto
    click_button('Update Product')
  end

  def count_by(_value)
    page.all('tr.hover-cursor', visible: true, maximum: 10, minimum: 1)
  end
end
