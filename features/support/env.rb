require 'selenium-webdriver'
require 'rspec'

require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'capybara'
require 'capybara/dsl'




# $port = 443

#Capybara.app_host = '<localhost>:<port>'
Capybara.configure do |config|
  config.run_server = true
  #Capybara.default_host = "<localhost>:<port>"
  config.default_driver = :selenium
  #config.app = "make sure this isn't nil"
  config.app_host = "https://www.bongobd.com"
  # config.server_port = $port
end

#To add chrome webdriver do the following in your machine
#chmod +x chromedriver
#sudo mv chromedriver /usr/local/share/
#sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
#sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
#Register chrome as default Capybara webdriver
Capybara.register_driver :chrome do |app|
  # optional
  client = Selenium::WebDriver::Remote::Http::Default.new
  # optional
  #client.timeout = 120
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => client)
end
#set default js driver
Capybara.javascript_driver = :chrome