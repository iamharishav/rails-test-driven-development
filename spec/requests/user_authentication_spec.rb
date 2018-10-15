require "rails_helper"

RSpec.describe "User Authentication ", :type => :request do 

	it "Should open up home page on / " do
		visit "/"
		expect(page).to have_content("Home Page")
	end
	it " Should get login page on /users/sign_in " do
		visit "/users/sign_in"
		expect(page).to have_content("Log in to start your session")
	end

	it "Should go to articles after login" do
		visit "/users/sign_in"
		expect(page).to have_content("Log in to start your session")
		user = FactoryGirl.create(:user)
		fill_in "Email", with: user.email 
		fill_in "Password", with: user.password 
		click_button "Sign In"
		expect(page).to have_content("Articles")
	end

end