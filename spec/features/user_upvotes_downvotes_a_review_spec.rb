require "rails_helper"

feature "upvotes/downvote a review", %Q{
  As an unauthenticated user
  I want to upvote/downvote a review
} do

  scenario "Like/Dislike Buttons show up " do
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
    fill_in "Rating", with: 2
    fill_in "Header", with: "Best Brewery Ever!"
    fill_in "Body", with: "OMG SO GOOD.  PERFECT"
    click_button 'Add Review'
    expect(page).to have_content("Like")
    expect(page).to have_content("Dislike")
  end

  scenario "Clicking Like or Dislike increases the count" do
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
    fill_in "Rating", with: 2
    fill_in "Header", with: "Best Brewery Ever!"
    fill_in "Body", with: "OMG SO GOOD.  PERFECT"
    click_button 'Add Review'
    click_button 'Like'
    visit brewpub_path
    expect(page).to have_button("Like 1")
  end
end
