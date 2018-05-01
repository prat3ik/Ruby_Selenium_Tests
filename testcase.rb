require_relative 'SiteWebelements.rb'

class LoginTest < Test::Unit::TestCase
  def test_login
    #define new browser
    browser=SiteWebelements.new("http://demo.mahara.org")

    username = 'pratikpatel'
    password = 'abc@123.com'

    # Enter username
    browser.username_textfield.send_keys(username)

    # Enter password
    browser.password_textfield.send_keys(password)

    # Click on Login button
    browser.login_button.click

    # Wait - timeout in 10 seconds
    wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds

    # If User Name is displayed on Profile page
    isNameDisplayed=browser.username_textview.displayed?

    assert_equal(true,isNameDisplayed, "Name of user not displayed, Profile page might not open")

    browser.close_browser
  end
end