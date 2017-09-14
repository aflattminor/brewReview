FactoryGirl.define do
  factory :review do
    id 1
    rating 3
    header "Here's a Review Header"
    body "I got your review right here buddy."
    brewpub
    user
    vote_count 0
  end
end
