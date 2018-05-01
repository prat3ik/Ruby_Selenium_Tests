require 'selenium-webdriver'

class SiteWebelements
  def initialize(url)
    @driver=Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.navigate.to url
  end
  def username_textfield()
    puts 'aaaa'
    return @driver.find_element(:id,'login_login_username')
  end
  def password_textfield()
    return @driver.find_element(:id,'login_login_password')
  end
  def login_button()
    return @driver.find_element(:id,'login_submit')
  end
  def username_textview()
    @driver.find_element(:css,'.username')
  end
  def logout_link()
    @driver.find_element(:link_text,'Logout')
  end
  def close_browser()
    @driver.quit
  end

end