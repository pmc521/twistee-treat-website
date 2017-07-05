require 'rails_helper'

feature 'create new schedule' do

  let(:user) { User.create(
    first_name: 'first',
    last_name: 'last',
    email: 'example@email.com',
    phone_number: "2151234567",
    password: 'password',
    password_confirmation: 'password'
  )}

  scenario 'user creates schedule' do

    sign_in_as(user)

    click_link "Schedule"
    click_link "New Schedule"

  end
end
