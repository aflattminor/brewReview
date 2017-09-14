require "rails_helper"

RSpec.describe Api::V1::VotesController, type: :controller do

  describe "POST#create" do
    it "creates a vote when user signed in" do
      user = User.create!(id: 1000, email: 'www@www.com', password: 123456, password_confirmation: 123456 )
      brewpub = create(:brewpub)
      review = Review.create!(id: 1000, rating:1, user_id: 1000, brewpub_id: 1)

      sign_in user

      post :create,
        params: {
          brewpub_id: 1,
          review_id: 1000
        },
        body: {
          review_id: 1000,
          user_id: 1000,
          user_vote: 1
        }.to_json,
        format: :json

      expect(Vote.count).to eq(1)
    end

    it "does not create a vote when user signed in" do
      user = User.create!(id: 1000, email: 'www@www.com', password: 123456, password_confirmation: 123456 )
      brewpub = create(:brewpub)
      review = Review.create!(id: 1000, rating:1, user_id: 1000, brewpub_id: 1)

      post :create,
        params: {
          brewpub_id: 1,
          review_id: 1000
        },
        body: {
          review_id: 1000,
          user_id: 1000,
          user_vote: 1
        }.to_json,
        format: :json

      expect(Vote.count).to eq(0)
    end
  end

  describe "GET#index" do
    it "finds all votes for a review" do
      user = User.create!(id: 1000, email: 'www@www.com', password: 123456, password_confirmation: 123456 )
      brewpub = create(:brewpub)
      review = Review.create!(id: 1000, rating:1, user_id: 1000, brewpub_id: 1)

      sign_in user

      get :index, params: { brewpub_id: 1, review_id: 1000 }

      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json).to be_kind_of(Integer)
      expect(returned_json).to_not be_kind_of(Hash)
      expect(returned_json).to_not be_kind_of(Array)
    end
  end

end
