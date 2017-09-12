require 'rails_helper'

feature "user visits brewpub show page" do
  xscenario "user visits the show page" do
    brewpub = create(:brewpub)
    visit "/brewpubs/1"
    expect(page).to have_content("Yards")
    expect(page).to have_content("901 N Delaware Ave")
    expect(page).to have_content("Philadelphia")
    expect(page).to have_content("PA")
    expect(page).to have_content("19123")
    expect(page).to have_content("A beer co.")
  end

  xscenario "user tries to submit a review without logging in" do
    brewpub = create(:brewpub)
    visit "/brewpubs/1"
    click_button 'Add Review'
    expect(page).to have_content("User can't be blank, Rating can't be blank")
  end

  xscenario "Logged in user submits a blank review"  do
    brewpub = create(:brewpub)
    user = create(:user)
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'
    visit "/brewpubs/1"
    click_button 'Add Review'
    expect(page).to_not have_content("User can't be blank")
    expect(page).to have_content("Rating can't be blank")
  end

  xscenario "Logged in user submits a review with only rating" do
    brewpub = create(:brewpub)
    user = create(:user)
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Log in'
    visit "/brewpubs/1"
    fill_in "Rating", with: 2
    fill_in "Header", with: "Best Brewery Ever!"
    fill_in "Body", with: "OMG SO GOOD.  PERFECT"
    click_button 'Add Review'
    expect(page).to have_content("2")
    expect(page).to have_content("Best Brewery Ever!")
    expect(page).to have_content("OMG SO GOOD.  PERFECT")
  end

end
