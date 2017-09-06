class BrewpubsController < ApplicationController
  def index
    @brewpubs = Brewpub.all
  end

  def show
    @brewpub = Brewpub.find(params[:id])
    @review = Review.new
    @review.brewpub = @brewpub
    @reviews=@brewpub.reviews
  end
end
