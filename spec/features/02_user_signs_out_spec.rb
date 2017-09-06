require 'spec_helper'

feature 'user signs out', %Q{
  As a user
  I want to sign out
} do

  scenario 'an existing user specifies a valid email and password' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'
    click_link 'Sign out'

    expect(page).to have_content("Signed out successfully.")
    expect(page).to have_content("Sign up")
    expect(page).to have_content("Sign in")
  end
end
