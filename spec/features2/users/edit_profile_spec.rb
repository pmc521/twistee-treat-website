require "rails_helper"

feature "user can edit profile" do

  let(:user) { User.create(
    first_name: 'first',
    last_name: 'last',
    email: 'example@email.com',
    phone_number: "2151234567"
    password: 'password',
    password_confirmation: 'password'
  )}

  scenario "user visits profile page and edits profile" do

    sign_in_as(user)
    visit user_path(user)
    click_link "Edit Profile"

    fill_in 'First Name', with: 'newfirst'
    fill_in 'Last Name', with: 'newlast'
    fill_in 'Email', with: 'newexample@email.com'
    fill_in 'Current Password', with: 'password'

    click_button 'Save Changes'

    visit user_path(user)

    expect(page).to have_content( 'newexample@email.com')
    expect(page).to have_cont ent( 'newfirst')
    expect(page).to have_cont ent( 'newlast')
  end

  scenario "user visits profile page and unsuccessfully edits profile" do

    sign_in_as(user)
    visit user_path(user)
    click_link "Edit Profile"

    fill_in 'Email', with: ''

    click_button 'Save Changes'

    expect(page).to have_content( 'Email is invalid')
    expect(page).to have_content( 'Email can\'t be blank')
    expect(page).to have_content( 'Current password can\'t be blank')
  end
end
