User.destroy_all
User.create(
  email: "MichaelJennings824@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true
)

User.create(
  email: "Alexx1435@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true
)

User.create(
  email: "cmternowchek@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true
)

User.create(
  email: "AJFlattery50@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true
)

Brewpub.destroy_all
Brewpub.create(
  name: 'Philadelphia Brewing Co.',
  address: '2440 Frankford Ave',
  city: 'Philadelphia',
  state: 'PA',
  zip: '19125',
  description: "Decades of brewing experience and an unwavering passion for the science of brewing are what define us best. We skillfully create our recipes by using only the best ingredients available. By adapting old world beer styles with modern brewing techniques, we have developed unique flavors that represent Philadelphia proudly. With more than a dozen different styles of ales and lagers brewed annually we have a beer for every discerning palate.",
  website_url: 'http://philadelphiabrewing.com/',
  img_url: 'http://www.ballparksandbrews.com/wp-content/uploads/2011/08/100_5781.jpg',
  logo_url: 'http://philadelphiabrewing.com/wp-content/uploads/2016/12/PhilaBrewLogo.png',
  phone_number: '215-427-2739',
  contact_email: 'info@philadelphiabrewing.com',
  facebook_url:"https://www.facebook.com/PhillyBrewing/",
  twitter_url:"https://twitter.com/phillybrewing",
  instagram_url:"https://www.instagram.com/philadelphiabrewing/",
  hours:"Sat 12-3pm",
  user_id: 1
)

Brewpub.create(
  name: 'Yards Brewing Company',
  address: '901 N Delaware Ave',
  city: 'Philadelphia',
  state: 'PA',
  zip: '19123',
  description: "Here at Yards, it's always been about working hard, having fun and giving back. The Brew Unto Others motto reflects our commitment to quality, community and sustainability. It's also a call-to-action. We encourage you to get together, to enjoy our beer, each other's company and to Brew Unto Others every day.",
  website_url: 'http://www.yardsbrewing.com/',
  img_url: 'http://philly.thedrinknation.com/images/stores/YardsBrewing.jpg',
  logo_url: 'http://www.yardsbrewing.com/assets/img/yards-logo-home.svg',
  phone_number: '215-634-2600',
  contact_email: 'info@yardsbrewing.com',
  facebook_url: "https://www.facebook.com/yardsbrew/",
  twitter_url: "https://twitter.com/YardsBrew",
  instagram_url: "https://www.instagram.com/yardsbrew/",
  hours: "Mon-Thurs 12 - 7pm, Friday - Sun 11:30 - 7pm",
  user_id: 1
)

Brewpub.create(
  name:"2nd Story Brewing",
  address:"117 Chestnut St",
  city:"Philadelphia ",
  state:"PA",
  zip:"19106",
  description:"We brew because we love it. From the raw ingredients to the finished product, we put great care into every step because we only want the best. We brew beers we like to drink and we brew beers our friends will like to drink. We are proud to be adding another chapter to Philadelphia’s beer story because the history and process of brewing is an important part of making great beer and making great communities.",
  hours:"SUN-THU 11:30 - 12:00 AM, FRI-SAT 11:30 - 2:00 AM",
  website_url:"http://www.2ndstorybrewing.com/",
  logo_url:"https://pbs.twimg.com/profile_images/463696886772158466/4s9rwUqI.jpeg",
  img_url:"http://mcgeady.org/wp-content/uploads/2015/03/2nd-Story-2.jpg",
  facebook_url:"https://www.facebook.com/2ndStoryBrewing",
  twitter_url:"https://twitter.com/2ndStoryBrewing",
  instagram_url:"https://www.instagram.com/2ndstorybrewing/",
  phone_number:"267-314-5770",
  contact_email: "info@2ndstorybrewing.com",
  user_id: 1
)

Brewpub.create(
  name:"Second District Brewing",
  address:"1939 S. Bancroft Street",
  city:"Philadelphia",
  state:"PA",
  zip:"19145",
  description:"At 2nd District, we brew uncompromised quality from unconventional ideas. We’re serious about our beer and doing right by our city. Homegrown in Newbold and rebuilt for the long haul, we’re opening up the garage doors and bringing you in.",
  hours:"EVERYDAY: 11AM - 2AM",
  website_url:"http://seconddistrictbrewing.com/",
  logo_url:"https://pbs.twimg.com/profile_images/818920800359186432/IjmfcVlK.jpg",
  img_url:"http://www.beerscenemag.com/wp-content/uploads/2017/02/FullSizeRender.jpg-3-620x330.jpg",
  facebook_url:"https://www.facebook.com/SecondDistrictBrewing/",
  twitter_url:"https://twitter.com/seconddistbrew",
  instagram_url:"https://www.instagram.com/seconddistrictbrewing/",
  phone_number:"215-575-5900",
  contact_email: "info@secondistrictbrewing.com",
  user_id: 1
)

Brewpub.create(
  name:"Saint Benjamin Brewing",
  address:"1710 N 5th Street",
  city:"Philadelphia ",
  state:"PA",
  zip:"19122",
  description:"Saint Benjamin Brewing Company is a craft brewery and taproom operating in Kensington, Philadelphia. The brewery is located in the historic carriage house and stables of the defunct Theo Finkenauer Brewery. At Saint Benjamin we interpret classic styles and design new creations such as the India Cream Ale and Junto, our coffee kolsch.",
  hours:"Tue - Fri 4pm-2am | Sat - Sun 11am-2am",
  website_url:"http://stbenjaminbrewing.com/",
  logo_url:"https://pbs.twimg.com/profile_images/2751356787/dea3bede751c58a1961a94af4c7f4763_400x400.png",
  img_url:"http://stbenjaminbrewing.com/wp-content/uploads/2011/01/061.jpg",
  facebook_url:"https://www.facebook.com/stbenjaminbrew",
  twitter_url:"https://twitter.com/seconddistbrew",
  instagram_url:"https://www.instagram.com/stbenjaminbrew/",
  phone_number:"215-232-4305",
  contact_email: "info@stbenjaminbrewing.com",
  user_id: 1
)

Brewpub.create(
  name:"Evil Genius Brewing",
  address:"1727 Front Street",
  city:"Philadelphia ",
  state:"PA",
  zip:"19122",
  description:"Founded by friends Luke Bowen and Trevor Hayward in 2011. Evil Genius Beer company now produces 28 different products in Bottles and on Draught and delivers beer to seven states (CT, DE, MA, MD, NJ, PA, and RI).",
  hours:"WEDNESDAY4:00 - 10:00PM, THURSDAY4:00 - 10:00PM, FRIDAY4:00 - 12:00AM, SATURDAY12:00 - 12:00AM, SUNDAY12:00 - 9:00PM",
  website_url:"http://evilgeniusbeer.com/",
  logo_url:"http://evilgeniusbeer.com/wp-content/uploads/2017/08/evil-genius-logo.png",
  img_url:"https://s3-media2.fl.yelpcdn.com/bphoto/_F6uO1bEqHYuN_-MiiRGhw/348s.jpg",
  facebook_url:"https://www.facebook.com/EvilGeniusBeerCompany/",
  twitter_url:"https://twitter.com/evilgeniusbeer",
  instagram_url:"https://www.instagram.com/evilgeniusbeer/",
  phone_number:"215-425-6820",
  contact_email: "info@evilgeniusbeer.com",
  user_id: 1
)

Brewpub.create(
  name:"Manayunk Brewery",
  address:"4120 Main Street",
  city:"Philadelphia ",
  state:"PA",
  zip:"19127",
  description:"At our brew pub in Philadelphia, we regularly feature our staple year round beers on draft, alongside very limited specialty beers and small-batch projects. From IPA's to lagers, porters to sours, you will find we have styles that satisfy any and all tastes.",
  hours:"Mon - Sat 11 AM to 11 PM, Sun 1 PM to 9 PM",
  website_url:"https://www.manayunkbrewery.com/",
  logo_url:"https://www.manayunkbrewery.com/themes/site/assets/images/logo.png",
  img_url:"https://www.manayunkbrewery.com/assets/images/partials/site_imagerow/full/PyeSl.jpeg",
  facebook_url:"https://www.facebook.com/ManayunkBrewery/",
  twitter_url:"https://twitter.com/ManayunkBrew",
  instagram_url:"https://www.instagram.com/manayunkbrewingco/",
  phone_number:"215-482-8220",
  contact_email: "info@manayunkbrewery.com",
  user_id: 1
)

Brewpub.create(
  name:"Dogfish Head",
  address:"6 Cannery Village Center",
  city:"Milton",
  state:"DE",
  zip:"19968",
  description:"Ever since the summer of 1995, we have been brewing, cooking, selling and talking everything beer. It's our pastime, our passion, our life. 22 years later, we’re just as dedicated to bringing off-centered goodness to off-centered people through our beer, scratch-made spirits, great food, our very own Inn and our events around the country.",
  hours:"Sun 12-7pm | Mon-Sat 11-7pm",
  website_url:"https://www.dogfish.com",
  logo_url:"https://www.wegmansburgerbar.com/portals/0/eventTeaser_dogfishHead.jpg",
  img_url:"http://www.beertrotter.com/wp-content/uploads/2014/03/DSCF3619-300x225.jpg",
  facebook_url:"https://www.facebook.com/dogfishheadbeer/",
  twitter_url:"https://twitter.com/dogfishbeer",
  instagram_url:"https://www.instagram.com/dogfishhead/",
  phone_number:"302-684-1000",
  contact_email: "info@dogfish.com",
  user_id: 1
)

Brewpub.create(
  name:"Earth Bread + Brewery",
  address:"7136 Germantown Ave",
  city:"Philadelphia ",
  state:"PA",
  zip:"19119",
  description:"Earth – Bread + Brewery is our name. Actually, Earth is our name; Bread + Brewery is what we do. Bread = delicious, wood-fired flatbread pizza, baked in our hand-built brick oven. Brewery = craft-made beer (what else?), brewed in-house, in small batches and ever changing.",
  hours:"Mon - Fri 4:30pm to Midnight, Sat - Sun 12pm to Midnight",
  website_url:"http://earthbreadbrewery.com",
  logo_url:"http://beerscenemag.com/wp-content/uploads/2014/01/Earth-Bread-Brewery.jpg",
  img_url:"http://philly.thedrinknation.com/images/bars/earthbreadbrewery.jpg",
  facebook_url:"https://www.facebook.com/earthbreadbrewery/",
  twitter_url:"https://twitter.com/earthbreadbrew",
  instagram_url:"https://www.instagram.com/explore/locations/595720/",
  phone_number:"215-242-6666",
  contact_email: "info@earthbreadbrewery.com",
  user_id: 1
)

Brewpub.create(
  name:"Luncacy Brewing",
  address:"214 W. Davis Rd",
  city:"Magnolia",
  state:"NJ",
  zip:"08049",
  description:"What can four guys do, when they get their friends and family together to support the idea of starting a little microbrewery tucked away in the back of an old print shop? Who would possibly support an idea like that? The very thought is… lunacy.",
  hours:"Thus 5-9pm, Fri 5-10pm, Sat 1-8pm, Sun 12-5pm",
  website_url:"http://lunacybrewingcompany.com/",
  logo_url:"http://lunacybrewingcompany.com/wp-content/uploads/2015/12/Lunacy-Light-Text.png",
  img_url:"https://68.media.tumblr.com/04874f1ad7dcf59b4962a9f3c7e66897/tumblr_nw2ep5gDib1uyqsfto1_1280.jpg",
  facebook_url:"https://www.facebook.com/LunacyBrewing/",
  twitter_url:"https://twitter.com/lunacybrewery",
  instagram_url:"https://www.instagram.com/lunacybrewingcompany/?hl=en",
  phone_number:"856-282-6300",
  contact_email: "Info@LunacyBrewingCompany.com",
  user_id: 1
)

Brewpub.create(
  name:"Flying Fish Brewery",
  address:"900 Kennedy Blvd",
  city:"Somerdale",
  state:"NJ",
  zip:"08083",
  description:"Our state-of-the-art brewery is the most sustainable in the region and allows us to brew beer in the most environmentally friendly way possible.  Flying Fish now produces a range of beers year-round, along with a variety of seasonal specialties. The Tasting Room, open Wednesday-Sunday features 15 taps and weekly one-off and barrel aged beers. Flying Fish beers are ten-time medal winners at the Great American Beer Festival, the most of any New Jersey brewery.",
  hours:"Wed-Friday, 3:00pm – 9:00pm, Saturday 12:00pm – 6:00pm, Sunday 12:00pm – 6:00pm",
  website_url:"https://www.flyingfish.com",
  logo_url:"https://upload.wikimedia.org/wikipedia/en/a/a0/FlyingFishBrewery.png",
  img_url:"https://24b7wn32tm54sl7t0jkcsxcs-wpengine.netdna-ssl.com/wp-content/uploads/2015/04/FlyingFishExterior-1024x599.jpg",
  facebook_url:"https://www.facebook.com/flyingfishbrew",
  twitter_url:"https://twitter.com/flyingfishbrew",
  instagram_url:"https://www.instagram.com/flyingfishbrew/",
  phone_number:"856-504-3442",
  contact_email: "info@flyingfish.com",
  user_id: 1
)

Brewpub.create(
  name:"Crime and Punishment",
  address:"2711 W Girard Ave",
  city:"Philadelphia ",
  state:"PA",
  zip:"19130",
  description:"From ales and lagers, to saisons and IPAs, there’s something on tap for everyone. C+P aims to blend the once-great local brewing tradition with newer craft techniques and international inspirations. They have designed a rotating menu of distinctive brews and Russian-influenced dishes done their way.",
  hours:"Mo/Tu/We 4PM-12AM | Th/Fr 4PM-1AM | Sa 11AM-1AM | Su 11AM-12AM",
  website_url:"http://crimeandpunishmentbrewingco.com/about-cnp/",
  logo_url:"http://crimeandpunishmentbrewingco.com/wp-content/themes/CRIMEANDPUNISHMENT/img/3-01.jpg",
  img_url:"http://crimeandpunishmentbrewingco.com/wp-content/uploads/2015/07/crimeandpunishment-5-1024x680.jpg",
  facebook_url:"https://www.facebook.com/pages/Crime-Punishment-Brewing-Co/332769353525129",
  twitter_url:"https://twitter.com/CandPBrewingCo",
  instagram_url:"https://www.instagram.com/crimeandpunishmentbrewingco/",
  phone_number:"215-235-2739",
  contact_email: "contact@crimeandpunishmentbrewery.com",
  user_id: 1
)

Brewpub.create(
  name:"Iron Hill Brewery & Restaurant",
  address:"1150 Market St",
  city:"Philadelphia",
  state:"PA",
  zip:"19107",
  description:"NOTHING’S MORE LOCAL than beer brewed ten feet from your table. NOTHING’S FRESHER than every dressing, every stock, every sauce made from scratch. Every day.  NOTHING’S TRUER TO WHO WE ARE than letting our craft beers and handcrafted foods inspire one another in unexpected ways.  And while we’re the most award-winning brewery east of the Mississippi, we’re not in it for the fame or the glory.  We’re in it because we love what we do.  Which is brewing beer.  Getting creative in the kitchen.  And integrating our passion from tap to table.  We’re more than a scratch kitchen.  We’re more than a craft brewery.",
  hours:"N/A",
  website_url:"https://www.ironhillbrewery.com",
  logo_url:"https://pbs.twimg.com/profile_images/1220205481/IHB_logo_fb2_400x400.jpg",
  img_url:"http://dnhe80tl27-flywheel.netdna-ssl.com/wp-content/uploads/2015/04/IH.jpg",
  facebook_url:"https://www.facebook.com/IronHillBrewery",
  twitter_url:"http://twitter.com/IronHillBrewery",
  instagram_url:"http://instagram.com/ironhillbrewery",
  phone_number:"215-555-5555",
  contact_email: "info@ironhillbrewery.com",
  user_id: 1
  )

Brewpub.create(
  name:"Dock Street Brewing",
  address:"701 S 50th Street",
  city:"Philadelphia ",
  state:"PA",
  zip:"19143",
  description:"We started in 1985, amidst a proverbial sea of watered down and adjunct-plagued lagers, as one of the first post-prohibition craft breweries in the country - and Philly’s first all-grain brewpub.",
  hours:"Mon - Thurs 3pm to 11pm, Fri-Sat 12pm to 1 am, Sun 12pm to 5pm",
  website_url:"http://www.dockstreetbeer.com/",
  logo_url:"https://upload.wikimedia.org/wikipedia/en/0/08/Dock-street-brewing-co-logo.png",
  img_url:"http://www.visitphilly.com/resize/images/Dock-street-Brewery-J.Fusco-900VP-587x0.jpg",
  facebook_url:"https://www.facebook.com/DockStreetBrewery/?ref=hl",
  twitter_url:"https://twitter.com/DockStreetBeer",
  instagram_url:"https://www.instagram.com/dockstreetbeer/",
  phone_number:"215-726-2337",
  contact_email: "info@dockstreetbeer.com",
  user_id: 1
)

Brewpub.create(
  name:"Tired Hands Brewing",
  address:"16 Ardmore Ave.",
  city:"Ardmore",
  state:"PA",
  zip:"19003",
  description:"Calling our original location a brewpub would be a gross overstatement of our brewery model. We bake bread on-site and source our simple menu of cheeses, meats, pickles and seasonal produce from roughly 100 miles from our brewery. The culinary creation side of our operation takes place entirely behind the long first floor bar; you can think of it as an open air kitchen of sorts. Simply put, our food serves our beer.",
  hours:"M: CLOSED, T: 4p–11p, W: 4p–12a, Th: 4p–12a, F: 4p–1a, Sa: 12p–1a, Su 12p–11",
  website_url:"http://www.tiredhands.com",
  logo_url:"http://thefullpint.com/wp-content/uploads/2014/03/tired-hands.jpg",
  img_url:"http://media.philly.com/images/tired_taps_2300_1024.jpg",
  facebook_url:"https://www.facebook.com/tiredhands",
  twitter_url:"https://twitter.com/tiredhandsbeer",
  instagram_url:"https://www.instagram.com/tiredhandsbrewing/",
  phone_number:"610-896-7621",
  contact_email: "info@tiredhands.com",
  user_id: 1
)

Brewpub.create(
  name:"Brewery ARS",
  address:"1927-29 W Passyunk Ave",
  city:"Philadelphia",
  state:"PA",
  zip:"19145",
  description:"Our creations are a direct reflection of our experiences and will depend upon the seasonality and availability of raw materials.  Our beers are open to complete interpretation.  Where we're going we don't need roads.",
  hours:"Thur - Fri 5-10pm, Sat 12 - 10pm, Sun 1 - 8pm",
  website_url:"http://breweryars.com/",
  logo_url:"http://breweryars.com/wp-content/uploads/2017/01/BreweryARS-landing-page-logowhite-2.png",
  img_url:"http://www.beerscenemag.com/wp-content/uploads/2016/12/IMG_2776-1024x537.jpg",
  facebook_url:"https://www.facebook.com/BreweryARS/",
  twitter_url:"https://twitter.com/BreweryARS",
  instagram_url:"https://www.instagram.com/breweryars/",
  phone_number:"215-960-5173",
  contact_email: "breweryars@gmail.com",
  user_id: 1
)

Brewpub.create(
  name:"Victory Brewing",
  address:"420 Acorn Ln",
  city:"Downingtown",
  state:"PA",
  zip:"19335",
  description:"Having trained in Germany, we appreciate the artistic freedom we have here in the U.S. Here, a fervent core of consumers embraces creativity, and we are happy to serve that audience with our experience in traditional methods, selection of choice, often imported ingredients, and the best processing that technology can offer us. We relish the opportunity to please both ourselves and our audience with our flavorful creations.",
  hours:"Mon-Sat 11AM-Midnight | Sun 11AM - 10PM",
  website_url:"http://www.victorybeer.com/",
  logo_url:"http://static1.squarespace.com/static/510a02e0e4b0086d33c3c797/t/542ef697e4b06b594fd9a96b/1412363932227/",
  img_url:"http://www.victorybeer.com/wp-content/uploads/2014/08/victory-brewing-downingtown-brewpub1-680uw.jpg",
  facebook_url:"https://www.facebook.com/victorybeer",
  twitter_url:"https://twitter.com/VictoryBeer",
  instagram_url:"https://www.instagram.com/victorybeer/?hl=en",
  phone_number:"610-514-7000",
  contact_email: "info@victorybeer.com",
  user_id: 1
)
