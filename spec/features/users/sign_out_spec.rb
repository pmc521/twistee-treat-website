require 'rails_helper'

feature 'user signs out' do

  let(:user) { User.create(
    first_name: 'first',
    last_name: 'last',
    email: 'example@email.com',
    phone_number: "2151234567",
    password: 'password',
    password_confirmation: 'password'
  )}

  scenario 'user signs out successfully' do

    visit root_path
    sign_in_as(user)

    click_link 'Sign Out'

    expect(page).to have_content('Signed out successfully.')

    expect(page).to have_content('Sign In')
    expect(current_user).to   eq(nil)
  end

end
