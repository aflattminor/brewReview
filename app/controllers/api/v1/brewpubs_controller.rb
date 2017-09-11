require 'pry'
class Api::V1::BrewpubsController < ApplicationController

  def index
    render json: Brewpub.all
  end

  def show
    brewpub = Brewpub.find(params[:id])
    reviews = brewpub.reviews
    items = [brewpub,reviews]

    render json: items
  end

end
