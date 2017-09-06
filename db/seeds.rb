Brewpub.create(
  name: 'Philadelphia Brewing Co.',
  address: '2440 Frankford Ave',
  city: 'Philadelphia',
  state: 'PA',
  zip: '19125',
  description: 'A brew company in Philly.',
  website_url: 'http://philadelphiabrewing.com/',
  img_url: 'http://www.ballparksandbrews.com/wp-content/uploads/2011/08/100_5781.jpg',
  logo_url: 'http://philadelphiabrewing.com/wp-content/uploads/2016/12/PhilaBrewLogo.png',
  phone_number: '(215)427-2739'
)

Brewpub.create(
  name: 'Yards Brewing Company',
  address: '901 N Delaware Ave',
  city: 'Philadelphia',
  state: 'PA',
  zip: '19123',
  description: '',
  website_url: 'http://www.yardsbrewing.com/',
  img_url: 'http://philly.thedrinknation.com/images/stores/YardsBrewing.jpg',
  logo_url: 'http://www.yardsbrewing.com/assets/img/yards-logo-home.svg',
  phone_number: '(215)634-2600'
)

User.create(
  email: "MichaelJennings@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

User.create(
  email: "AlexLuna@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)
