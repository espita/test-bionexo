require 'rspec'
require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
require 'pry'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'securerandom'

Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
	config.default_driver = :chrome
	config.app_host = 'http://qainterview.qa.cloud.bionexo.com.br'
  config.default_max_wait_time = 30

end
