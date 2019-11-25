require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'pry'


driver_path = Dir[File.join(File.dirname(__FILE__), 'drivers/')]

binding.pry
case ENV['BROWSER']
when 'CHROME' then Selenium::WebDriver::Chrome::Service.driver_path = "#{File.dirname(__FILE__)}/drivers/chromedriver.exe"
when 'FIREFOX' then Selenium::WebDriver::Firefox::Service.driver_path = "#{File.dirname(__FILE__)}/drivers/geckodriver.exe"
