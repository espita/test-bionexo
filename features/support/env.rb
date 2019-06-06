require 'rspec'
require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
require 'pry'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'securerandom'
require 'faker'

case ENV['BROWSER']
	when 'ff'
		# using firefox
		DRIVER = :firefox
		Capybara.register_driver :firefox do |app|
			Capybara::Selenium::Driver.new(app, :browser => :firefox)
		end
	else
		# using chrome
		DRIVER = :chrome
		Capybara.register_driver :chrome do |app|
			Capybara::Selenium::Driver.new(app, :browser => :chrome)
		end
end

Capybara.configure do |config|
	config.default_driver = DRIVER
	config.app_host = 'http://qainterview.qa.cloud.bionexo.com.br'
  config.default_max_wait_time = 30

end
