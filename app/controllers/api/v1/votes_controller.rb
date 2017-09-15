class Api::V1::VotesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    data = JSON.parse(request.body.read)

    review = Review.find(params[:review_id])
    votes = review.votes
    existing_vote = Vote.find_by(review: review, user: current_user)

    if current_user
      if votes.include?(existing_vote)
        existing_vote.update_attribute(:user_vote, data["user_vote"])
      else
        new_vote = Vote.create(
          review_id: data["review_id"],
          user_id: current_user.id,
          user_vote: data["user_vote"]
        )
        render json: new_vote
      end
    else
      render json: nil
    end

  end

  def index
    review = Review.find(params[:review_id])
    votes = review.votes

    vote_values = votes.map do |vote|
      vote["user_vote"]
    end

    total_vote_values = 0
    vote_values.each do |value|
      total_vote_values += value
    end

    render json: total_vote_values
  end

end
