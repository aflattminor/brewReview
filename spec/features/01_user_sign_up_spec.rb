require "rails_helper"

feature "sign up", %Q{
  As an unauthenticated user
  I want to sign up
  So that I can contribute a review
} do

  scenario "specifying valid and required information" do
    visit root_path
    click_link "Sign up"
    fill_in "Email", with: "Joe@gmail.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"

    click_button "Sign up"

    expect(page).to have_content("You have signed up successfully")
    expect(page).to have_content("Sign out")
  end

  scenario "required information not supplied" do
    visit root_path
    click_link "Sign up"
    click_button "Sign up"

    expect(page).to have_content("errors prohibited")
    expect(page).to_not have_content("Sign out")
  end
end
