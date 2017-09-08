require "rails_helper"

feature "edit brewpub", %Q{
  As an authenticated user/admin
  I want to edit a brewpub
} do

  xscenario "specifying valid and required information" do
    user = User.create(email: 'akjsd@skadl.com', password: 111111, password_confirmation: 111111, admin: true)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'

    visit '/brewpubs/new'
    fill_in "Name", with: "Victory"
    fill_in "Address", with: "123 North Street"
    fill_in "City", with: "Philadelphia"
    fill_in "State", with: "PA"
    fill_in "Zip", with: "19123"
    fill_in "Description", with: "Dirt Wolf"
    fill_in "Website", with: "http://www.qqwdqwqw.com"
    fill_in "Image", with: "http://www.qqwdqwqw.com"
    fill_in "Logo", with: "http://www.qqwdqwqw.com"
    fill_in "Phone Number", with: "610-444-7654"
    fill_in "Contact Email", with: "George@gmail.com"
    click_button "Add Brewpub"
    click_link "Edit Brewpub"
    fill_in "Name", with: "Wictory"
    click_button "Add Brewpub"

    expect(page).to have_content("successfully updated")
    expect(page).to have_content("Wictory")
  end
  xscenario "missing name, address, city, state, zip, description, website, image, logo, phone number, contact email" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'
    visit brewpubs_path
    click_link "Add a New Brewpub"
    click_button "Add Brewpub"
    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Address can't be blank")
    expect(page).to have_content("City can't be blank")
    expect(page).to have_content("State can't be blank")
    expect(page).to have_content("Zip can't be blank")
    expect(page).to have_content("Description can't be blank")
    expect(page).to have_content("Website url can't be blank")
    expect(page).to have_content("Img url can't be blank")
    expect(page).to have_content("Logo url can't be blank")
    expect(page).to have_content("Phone number can't be blank")
    expect(page).to have_content("Contact email can't be blank")
  end
end
