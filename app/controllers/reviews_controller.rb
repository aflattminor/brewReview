class ReviewsController < ApplicationController
  def create
    @brewpub = Brewpub.find(params[:brewpub_id])
    @reviews = @brewpub.reviews.order(created_at: :desc)
    @review = Review.new(review_params)
    if current_user
      @review.user_id = current_user.id
    end
    @review.brewpub=@brewpub

    if @review.save
      redirect_to @brewpub, notice: 'Review was Successfully Created'
    else
      flash[:notice] = @review.errors.full_messages.join(', ')
      render :'brewpubs/show'
    end
  end

  def destroy
      @brewpub = Brewpub.find(params[:brewpub_id])
      @review = Review.find_by(brewpub: @brewpub)
      @review.delete
      redirect_to brewpub_path(@brewpub), notice:  "review deleted"
    end

  private

  def review_params
    params.require(:review).permit(:rating, :body, :header)
  end
end
