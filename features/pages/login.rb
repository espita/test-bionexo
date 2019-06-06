# frozen_string_literal: true

class Login
  include RSpec::Mocks::ExampleMethods::ExpectHost
  include RSpec::Matchers
  include Capybara::DSL
  def logar
    visit('http://qainterview.qa.cloud.bionexo.com.br')
    fill_in('user[email]', with: 'edson.pita.sp@gmail.com')
    fill_in('user[password]', with: 'Bionexo2019')
    find('input[name="commit"]').click
    end
end
