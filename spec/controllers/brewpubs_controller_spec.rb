require 'rails_helper'

RSpec.describe BrewpubsController, type: :controller do
login_admin
  it "new brewpub" do
    post :new, params: {brewpub: {
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
    expect(response.status).to eq 200
  end

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

  login_admin
    it "does not create a Brewpub for invalid info" do
      post :create, params: {brewpub: {
          id: 100,
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

      expect(Brewpub.count).to eq(0)
    end



end
