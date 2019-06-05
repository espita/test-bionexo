class Produtos
    include RSpec::Mocks::ExampleMethods::ExpectHost
    include RSpec::Matchers
    include Capybara::DSL

    def page_produto
       click_link('Produtos')
       click_link('Novo Produto')
    end

    def preencher_dados(campo,valor)
        fill_in("product[#{campo}]", :with => valor)
    end
    def clicar_create
        click_button('Create Product')
    end

    def select_from(id, value)
      page.find_by_id(id).find("option[value=#{value}]").select_option
    end


end
