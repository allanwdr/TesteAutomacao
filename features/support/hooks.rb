$inmetrics = Inmetrics::Pages.new

Before do
  Capybara.current_session.driver.browser.manage.window.maximize
end

After do |scenario|
  scenario.name.gsub(/[^\w\s]/, '').tr(' ', '_')

  printscreen(scenario.name.downcase, scenario.failed? ? 'failed' : 'passed')
  Capybara.current_session.driver.quit
end