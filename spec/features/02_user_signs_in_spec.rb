require 'spec_helper'

feature 'user sign in', %Q{
  As a user
  I want to sign in
  So I can add a Brewpub
} do

  scenario 'an existing user specifies a valid email and password' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'

    expect(page).to have_content("Welcome Back!")
    expect(page).to have_content("Sign out")
  end

  scenario 'a nonexistent email and password is supplies' do
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: "IdontExist@gmail.com"
    fill_in "Password", with: "password"
    click_button 'Log in'

    expect(page).to have_content("Invalid Email or password")
    expect(page).to have_content("Log in")
  end

  scenario 'an existing email and wrong password is supplies and denies access' do
  visit root_path
  click_link "Sign in"
  fill_in "Email", with: "junk@hotmail.com"
  fill_in "Password", with: "junknond"
  click_button 'Log in'

  expect(page).to have_content("Invalid Email or password.")
  expect(page).to have_content("Log in")
end
  scenario 'an already authenticated user cannot re-sign in' do
      user = FactoryGirl.create(:user)
      visit root_path
      click_link "Sign in"
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button 'Log in'



      expect(page).to_not have_content("Sign in")
      expect(page).to have_content("Sign out")
    end

end
