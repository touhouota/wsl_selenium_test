require "selenium-webdriver"

driver = Selenium::WebDriver.for(:remote, :url => 'http://192.168.10.101:4445/wd/hub', :desired_capabilities => :chrome)

driver.get("https://google.com")
puts driver.title

driver.quit
