require 'rails_helper'

RSpec.describe BrewpubsController, type: :controller do
login_admin
  it "creates brewpub" do
    post :create, params: {brewpub: {
        id: 100,
        name: "Victory",
        address: "123 North Street",
        city: "Philadelphia",
        state: "PA",
        zip: "19123",
        description: "Dirt Wolf",
        website_url: "http://www.qqwdqwqw.com",
        img_url: "http://www.qqwdqwqw.com",
        logo_url: "http://www.qqwdqwqw.com",
        phone_number: "610-444-7654",
        contact_email: "George@gmail.com"
    }}
    expect(response.status).to eq 302
    expect(Brewpub.count).to eq(1)
  end

  it "updates brewpub" do
    brewpub_1 = create(:brewpub)
    post :update, params: {id: 1, brewpub: {
        id: 1,
        name: "Victo",
        address: "123 North Street",
        city: "Philadelphia",
        state: "PA",
        zip: "19123",
        description: "Dirt Wolf",
        website_url: "http://www.qqwdqwqw.com",
        img_url: "http://www.qqwdqwqw.com",
        logo_url: "http://www.qqwdqwqw.com",
        phone_number: "610-444-7654",
        contact_email: "George@gmail.com"
    }}
    expect(Brewpub.last[:name]).to eq("Victo")
  end

end
