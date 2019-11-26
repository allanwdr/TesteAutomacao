require 'yaml'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'
require 'pry'
require 'httparty'
require 'ffi' if Gem.win_platform?

Dir[File.join(File.dirname(__FILE__), './**/*.rb')].sort.each { |file| require file }

def load_file(path)
  YAML.load_file("#{File.dirname(__FILE__)}#{path}")
end

YAML_DATA = load_file('/data/test_data.yaml')
CONFIG_DATA = load_file('/config/config.yaml')

BROWSER = ENV['BROWSER']

if ENV['PLATAFORM'].eql?('web')
  Capybara.register_driver :selenium do |app|
    case BROWSER
    when 'chrome' then Capybara::Selenium::Driver.new(app, browser: :chrome)
    when 'firefox' then Capybara::Selenium::Driver.new(app, browser: :firefox, marionette: true)
    when 'internet_explorer' then Capybara::Selenium::Driver.new(app, browser: :ie)
    end
  end

  Capybara.configure do |config|
    config.app_host = CONFIG_DATA['urls']['web']
    config.default_max_wait_time = 10
    config.default_driver = :selenium
  end
elsif ENV['PLATAFORM'].eql?('api')
  HTTP_LOG = ENV['HTTP_LOG'].eql?('true')
else
  raise '##################################################################

Deve ser informado a plataforma que deseja executar, ex.:
cucumber -t @confira_nossas_vagas -p web

##################################################################'
end
