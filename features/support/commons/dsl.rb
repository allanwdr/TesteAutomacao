def printscreen(file_name, result)
  path = "reports/screenshots/"
  name = "#{file_name.gsub(/[^\w\s]/, '').tr(' ', '_')}#{result}.png"
  screenshot = "#{path}#{name}"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'SCREENSHOT')
end
