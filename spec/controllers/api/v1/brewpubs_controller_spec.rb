require "rails_helper"

RSpec.describe Api::V1::BrewpubsController, type: :controller do

  let!(:first_brewpub) { create(:brewpub) }

  describe "GET#index" do
    it "should show list of brewpubs" do

      get :index
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json).to be_kind_of(Array)
      expect(returned_json).to_not be_kind_of(Hash)

      expect(returned_json[0]["name"]).to eq "Yards Brewing"
      expect(returned_json[0]["id"]).to eq 1

    end
  end

  describe "GET#show" do
    it "should show the brewpubs" do

      get :show, params: { id: 1 }
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json[0]["name"]).to eq "Yards Brewing"
      expect(returned_json[0]["id"]).to eq 1
    end
  end
end
