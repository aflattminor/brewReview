class Api::V1::ReviewsController < ApplicationController

  #needs user authentication feature from devise
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def create
    data = JSON.parse(request.body.read)
    new_review = Review.create(
      rating: data["rating"],
      header: data["header"],
      body: data["body"],
      brewpub_id: data["brewpub_id"],
      user_id: 1, #needs user authentication feature from devise
      vote_count: 0
      )

    render json: new_review
  end

end
