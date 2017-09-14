

class ReviewMailer < ApplicationMailer
  def new_review(review)
    @review = review

    mail(
      to: review.brewpub.user.email,
      subject: "New Review for #{review.brewpub.name}"
    )

    # using SendGrid's Ruby Library
    # https://github.com/sendgrid/sendgrid-ruby
    # from = Email.new(email: 'test@example.com')
    # to = Email.new(email: 'test@example.com')
    # content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    # binding.pry
    #
    # mail(from, review, to, content)
    #
    # sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    # response = sg.client.mail._('send').post(request_body: mail.to_json)
    # puts response.status_code
    # puts response.body
    # puts response.headers

  end
end
