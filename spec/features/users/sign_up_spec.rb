require "rails_helper"

feature 'sign up' do

  scenario 'user fills in signup form correctly and signs up' do

    visit new_user_registration_path
    fill_in 'First Name', with: 'John'
    fill_in 'Last Name', with: 'Doe'
    fill_in 'Phone Number', with: '1234567890'
    fill_in 'Email', with: 'John@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_button 'Sign Up'

    expect(page).to have_content("Welcome! You have signed up successfully."  )
    expect(page).to have_content("Sign Out")
  end

end
