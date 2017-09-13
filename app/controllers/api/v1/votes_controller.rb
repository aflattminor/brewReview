require 'pry'

class Api::V1::VotesController < ApplicationController

  #needs user authentication feature from devise
  # before_action :authenticate_user
  skip_before_action :verify_authenticity_token

  def create
    data = JSON.parse(request.body.read)
    if current_user
      new_vote = Vote.create(
        review_id: data["review_id"],
        user_id: current_user.id, #needs user authentication feature from devise
        user_vote: data["user_vote"]
      )
      render json: new_vote
    else
      render json: nil
    end

  end

  def index
    votes = Vote.where(params[:review_id] ==1)


    vote_values = votes.map do |vote|
      vote["user_vote"]
    end


    total_vote_values = 0
    vote_values.each do |value|
      total_vote_values += value
    end
  

    data = [votes, total_vote_values]

    render json: data
  end
end
