require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'pry'
require 'ffi' if Gem.win_platform?

BROWSER = ENV['BROWSER']

# binding.pry
if ENV['PLATAFORM'].eql?('web')
  case BROWSER
  when 'chrome' then Selenium::WebDriver::Chrome::Service.driver_path = "#{File.dirname(__FILE__)}/drivers/chromedriver.exe"
  when 'firefox' then Selenium::WebDriver::Firefox::Service.driver_path = "#{File.dirname(__FILE__)}/drivers/geckodriver.exe"
  when 'internet_explorer' then Selenium::WebDriver::IE::Service.driver_path = "#{File.dirname(__FILE__)}/drivers/IEDriverServer.exe"
  end

  Capybara.configure do |config|
    config.app_host = 'https://www.inmetrics.com.br/'
    config.default_max_wait_time = 10
    config.default_driver = case BROWSER
                            when 'CHROME' then :chrome
                            when 'FIREFOX' then :firefox
                            when 'internet_explorer' then :ie
  end
elsif ENV['PLATAFORM'].eql?('api')
  HTTP_LOG = ENV['HTTP_LOG'].eql?('true')
else
  raise %(##################################################################

Deve ser informado o sistema que deseja executar, ex.:
cucumber -t @confira_nossas_vagas -p web

##################################################################)
end
# binding.pry

