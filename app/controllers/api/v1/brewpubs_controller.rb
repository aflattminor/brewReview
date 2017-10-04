
class Api::V1::BrewpubsController < ApplicationController

  def index
    render json: Brewpub.all
  end

  def show
    brewpub = Brewpub.find(params[:id])
    reviews = brewpub.reviews
    brewpub_rating = 0

    reviews.each do |review|
      brewpub_rating = brewpub_rating + review.rating
    end

    if reviews.length > 0
      average_rating = brewpub_rating / reviews.length
    end

    if current_user
      items = [brewpub,reviews,average_rating, current_user]
    else
      items = [brewpub,reviews,average_rating]
    end

    render json: items
  end

  def destroy
    brewpub = Brewpub.find(params[:id])
    brewpub.delete

    render :index
  end

end
