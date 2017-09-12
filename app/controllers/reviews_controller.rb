class ReviewsController < ApplicationController

  def destroy
    @brewpub = Brewpub.find(params[:brewpub_id])
    @review = Review.find_by(brewpub: @brewpub)
    @review.delete
    redirect_to brewpub_path(@brewpub), notice:  "review deleted"
  end

  private

end
