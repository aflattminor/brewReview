FactoryGirl.define do
  factory :brewpub do
    name "Yards Brewing"
    address "901 N Delaware Ave"
    city "Philadelphia"
    state "PA"
    zip "19123"
    description "A beer co."
    website_url "yardsbrewing.com"
    img_url "https://123.com"
    logo_url "https://abc.com"
    phone_number "215-634-2600"
    contact_email "hello@yards.com"
    user
  end
end
