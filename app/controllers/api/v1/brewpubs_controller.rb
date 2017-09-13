
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

    average_rating = brewpub_rating / reviews.length

    items = [brewpub,reviews,average_rating]

    render json: items
  end

end
