

class ReviewMailer < ApplicationMailer
  def new_review(review)
    @review = review

    mail(
      to: review.brewpub.user.email,
      subject: "New Review for #{review.brewpub.name}"
    )
    
  end
end
