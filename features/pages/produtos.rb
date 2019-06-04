class Produtos
    include RSpec::Mocks::ExampleMethods::ExpectHost
    include RSpec::Matchers
    include Capybara::DSL

    def page_produto
       click_link('Produtos')
       click_link('Novo Produto')
    end

    def cadastrar_produto_invalido
        fill_in('product[name]', :with => 'Siringa')
        binding.pry
        click_button('Create Product')
    end
    def clicar_create
        click_button('Create Product')
    end



end
