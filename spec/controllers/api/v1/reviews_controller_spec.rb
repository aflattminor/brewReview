require "rails_helper"

RSpec.describe Api::V1::ReviewsController, type: :controller do
  let!(:first_brewpub) { create(:brewpub) }
  let!(:newReview) { Review.create(rating: 3, header: "Here's a Review Header", body: "I got your review right here buddy.", brewpub_id: 1, user_id: 1, vote_count: 0) }

  describe "POST#create" do
    it "returns the json of the newly posted review" do

      post :create, params: { brewpub_id: 1}, body: {rating: 3, header: "Here's a Review Header", body: "I got your review right here buddy.", brewpub_id: 1, user_id: 1, vote_count: 0}.to_json, format: :json


      returned_json = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json).to be_kind_of(Hash)
      expect(returned_json).to_not be_kind_of(Array)
      expect(returned_json["rating"]).to eq 3
      expect(returned_json["body"]).to eq "I got your review right here buddy."

    end
  end
end
