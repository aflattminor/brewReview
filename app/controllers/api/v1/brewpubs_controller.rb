class Api::V1::BrewpubsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show, :new, :create]

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
