require "rails_helper"

feature "add brewpub", %Q{
  As an unauthenticated user
  I want to add a new brewpub
  So that I can contribute a review
} do

  scenario "specifying valid and required information" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'
    visit brewpubs_path
    click_link "Add a New Brewpub"
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
    expect(page).to have_content("Brewpub added successfully")
  end
  scenario "missing name, address, city, state, zip, description, website, image, logo, phone number, contact email" do
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
  scenario "incorrect contact email format" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'
    visit brewpubs_path
    click_link "Add a New Brewpub"
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
    fill_in "Contact Email", with: "Georgegmail.com"
    click_button "Add Brewpub"
    expect(page).to have_content("Contact email should be in the form abc@123.com")
  end
  scenario "format for phone number is incorrect" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'
    visit brewpubs_path
    click_link "Add a New Brewpub"
    fill_in "Name", with: "Victory"
    fill_in "Address", with: "123 North Street"
    fill_in "City", with: "Philadelphia"
    fill_in "State", with: "PA"
    fill_in "Zip", with: "19123"
    fill_in "Description", with: "Dirt Wolf"
    fill_in "Website", with: "http://www.qqwdqwqw.com"
    fill_in "Image", with: "http://www.qqwdqwqw.com"
    fill_in "Logo", with: "http://www.qqwdqwqw.com"
    fill_in "Phone Number", with: "6104447654"
    fill_in "Contact Email", with: "George@gmail.com"
    click_button "Add Brewpub"
    expect(page).to have_content("Phone number should be in the form 123-123-1234")
end
  scenario "format invalid for urls" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'
    visit brewpubs_path
    click_link "Add a New Brewpub"
    fill_in "Name", with: "Victory"
    fill_in "Address", with: "123 North Street"
    fill_in "City", with: "Philadelphia"
    fill_in "State", with: "PA"
    fill_in "Zip", with: "19123"
    fill_in "Description", with: "Dirt Wolf"
    fill_in "Website", with: "qqwdqwqw"
    fill_in "Image", with: "qwdqwqw"
    fill_in "Logo", with: "qqwdqwqw"
    fill_in "Phone Number", with: "610-444-7654"
    fill_in "Contact Email", with: "George@gmail.com"
    click_button "Add Brewpub"
    expect(page).to have_content("Website url should be in the form https://www.abc123.com")
    expect(page).to have_content("Img url should be in the form https://www.abc123.com")
    expect(page).to have_content("Logo url should be in the form https://www.abc123.com")
  end
end
