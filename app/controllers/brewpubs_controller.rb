class BrewpubsController < ApplicationController
  def index
    @brewpubs = Brewpub.all
  end
end
