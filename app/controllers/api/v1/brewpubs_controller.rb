class Api::V1::BrewpubsController < Api::V1::BaseController
  before_action :authenticate_user!, except: [:index, :show]
    before_action :authorize_user, except: [:index, :show, :new, :create]

  def index
    respond_with Brewpub.all
  end

  def show
    brewpub = Brewpub.find(params[:id])
    new_review = Review.new
    new_review.brewpub = brewpub
    reviews = brewpub.reviews
    items = [brewpub,reviews]

    respond_with items
  end

end
