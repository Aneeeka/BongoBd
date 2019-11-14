Given("We navigate to the BongoBd WebSite") do
  visit '/'
end

When("We click the login button") do
	click_link("Log In")
end

When("we click the Login with phone Button") do
  click_button('regNext')
end

When("we enter {string} as phone number") do |string|
  main, popup = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(popup)
  fill_in 'phone_number', with: string
end

When("we click use SMS button") do
	click_button("sms")
end

When("we click use Whatsapp button") do 
	click_button("whatsapp")
end

When("we enter the correct OTP") do
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(popup)
  	if page.has_content?("Account verified!")
  		click_button('Continue')
  	else
  		find(:button, "Continue", wait: 30).click
	end
end

When("we enter the incorrect OTP") do
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(popup)
  	fill_in 'confirmation_code', with: "123456"
  	find(:button, "Continue").click
end

When("we click I didnt get the code") do 
	# I didn't get a code
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(popup)
  	click_on("I didn't get a code")
end

# 
When("we click Get Code on Facebook") do 
	# I didn't get a code
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(popup)
  	click_on("Get Code on Facebook")
end
# Get a WhatsApp code

When("we click Get a WhatsApp code") do 
	# I didn't get a code
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(popup)
  	click_on("Get a WhatsApp code")
end

When("we click Get an SMS code") do 
	# I didn't get a code
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(popup)
  	click_on("Get an SMS code")
end



When("We click {string} link") do | link_text |
	first("a", :text=>link_text).click
end

When("The {string} content is only for exclusive") do |content_name|
	expect(page).to have_xpath("//a[text()[contains(.,'"+content_name+"')]]/ancestor-or-self::div[@class='item']/div[@class='row']/div[@class='col-xs-24']/div[@class='slick-img']/a/span[@class='badge premium-badge']")
end

When("the {string} content is free")do |content_name|
	expect(page).to have_xpath("//a[text()[contains(.,'"+content_name+"')]]/ancestor-or-self::div[@class='item']/div[@class='row']/div[@class='col-xs-24']/div[@class='slick-img']/a[not(span/@class = 'badge premium-badge')]")
end


Then("we expect profile in main window") do
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(main)
	page.should have_xpath("//span[@class='profile']")
end

Then("we expect message invalid phone number") do 
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(popup)
	page.should have_content("Please enter a valid phone number.")
end

Then("we expect message invalid otp") do
	main, popup = page.driver.browser.window_handles
  	page.driver.browser.switch_to.window(popup)
	page.should have_content("We couldn't verify your code. Please try again:")
end

Then("we get the {string} title in page") do |title|
	expect(page).to have_title title
end
