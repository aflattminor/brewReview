class BrewpubMailer < ApplicationMailer

  def new_brewpub(brewpub)
    @brewpub = brewpub
    
    mail(
      to: brewpub.user.email,
      subject: "New Brewpub Submitted"
    )
  end

end
