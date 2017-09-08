require 'rails_helper'



feature " Only Admin can delete a review" do
  xscenario "authenticated user deletes a review" do
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

    fill_in "Rating", with: 2
    fill_in "Header", with: "No one cares "
    fill_in "Body", with: "I like it "
    click_button "Add Review"

    click_button "Delete This Review"

    expect(page).to have_content("review deleted")
    expect(page).to have_content("Victory")
    expect(page).to_not have_content("No one cares")
    expect(page).to_not have_content("I like it")
  end

    xscenario "un-authenticated user cannot deletes a review" do
      user = FactoryGirl.create(:user)
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
      fill_in "Rating", with: 2
      fill_in "Header", with: "No one cares "
      fill_in "Body", with: "I like it "
      click_button "Add Review"
      expect(page).to_not have_button("Delete This Review")
    end
  end
