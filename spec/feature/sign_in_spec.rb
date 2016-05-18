require 'rails_helper'

feature 'User Regestration' do
	scenario 'allows a user to register' do
		visit new_user_registration_path
		fill_in 'First Name',        		with: 'Gabriela'
		fill_in 'Last Name',         		with: 'Peixoto'   
		fill_in 'Email',             		with: 'newuser@example.com'
		fill_in 'Password',          		with: 'userpassword'
		fill_in 'Password Confirmation'     with: 'userpassword'
		click_button 'Sign up'
		expect(page).to have_content("OK")
	end
end