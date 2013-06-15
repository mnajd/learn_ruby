
class FacebookHomePage
	def initialize(driver)
		@driver = driver
	end

	def send_email(value)
		e = @driver.find_element(:id, 'email')
		e.send_keys value
	end
	def send_password(value)
		e = @driver.find_element(:id, 'pass')
		e.send_keys value
	end
	def click_login
		e = @driver.find_element(:id, 'loginbutton')
		e.click
	end
	def get_error
		e = @driver.find_element(:class, 'fsl')
		e.text
	end
end



describe "login" do

	before(:each) do
		|
		# open driver and go to facebook
		@driver = Selenium::WebDriver.for :chrome
		@driver.navigate.to "http://www.facebook.com"
		
	end
	it "should not login" do 

		# login
		home_page = FacebookHomePage.new(@driver)
		home_page.send_email("test@email.com")
		home_page.send_password "fail"
		home_page.click_login

		# error message
		home_page.get_error.should == "Incorrect Email"
	end


	it "should login" do 

		# login
		home_page = FacebookHomePage.new(@driver)
		home_page.send_email("test@email.com")
		home_page.send_password "success"
		home_page.click_login

	end
end