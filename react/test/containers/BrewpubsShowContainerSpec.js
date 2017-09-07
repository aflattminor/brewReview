import BrewpubsShowContainer from '../../src/containers/BrewpubsShowContainer';
import BrewpubComponent from '../../src/components/BrewpubComponent';
import ReviewComponent from '../../src/components/ReviewComponent';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

describe('BrewpubsShowContainer', () => {
  let wrapper;

  beforeEach(() => {
    let response = new window.Response(
      JSON.stringify([
        {
          id:1,
          address:"2440 Frankford Ave",
          beers:null,
          city:"Philadelphia",
          contact_email:"123@abc.com",
          created_at:"2017-09-06T21:46:14.274Z",
          description:"A brew company in Philly.",
          facebook_url:null,
          hours:null,
          img_url:"http://www.ballparksandbrews.com/wp-content/uploads/2011/08/100_5781.jpg",
          instagram_url:null,
          logo_url:"http://philadelphiabrewing.com/wp-content/uploads/2016/12/PhilaBrewLogo.png",
          name:"Philadelphia Brewing Co.",
          phone_number:"215-427-2739",
          rating:null,
          state:"PA",
          tours:null,
          twitter_url:null,
          updated_at:"2017-09-06T21:46:14.274Z",
          user_id:1,
          website_url:"http://philadelphiabrewing.com/",
          zip:"19125"
        },
        [{
          id: 1,
          user_id: 1,
          brewpub_id:1,
          rating: 5,
          header: "header",
          body: "body"
        }]
      ]), {
        status: 200,
        statusText: 'OK',
        headers: { 'Content-Type': 'application/json'}
      }
    )

    spyOn(global, 'fetch').and.returnValue(Promise.resolve(response))

    wrapper = mount(
      <BrewpubsShowContainer />
    )
  });

  it('should have a specified initial state', () => {
    expect(wrapper.state()).toEqual({
      brewpub: {},
      reviews: []
    })
  })

  it('should have a specified state after fetch', done => {
    setTimeout(() => {
      expect(wrapper.state()).toEqual({
          brewpub: {
            address:"2440 Frankford Ave",
            beers:null,
            city:"Philadelphia",
            contact_email:"123@abc.com",
            created_at:"2017-09-06T21:46:14.274Z",
            description:"A brew company in Philly.",
            facebook_url:null,
            hours:null,
            id:1,
            img_url:"http://www.ballparksandbrews.com/wp-content/uploads/2011/08/100_5781.jpg",
            instagram_url:null,
            logo_url:"http://philadelphiabrewing.com/wp-content/uploads/2016/12/PhilaBrewLogo.png",
            name:"Philadelphia Brewing Co.",
            phone_number:"215-427-2739",
            rating:null,
            state:"PA",
            tours:null,
            twitter_url:null,
            updated_at:"2017-09-06T21:46:14.274Z",
            user_id:1,
            website_url:"http://philadelphiabrewing.com/",
            zip:"19125"
          },
          reviews: [{
              id: 1,
              user_id: 1,
              brewpub_id:1,
              rating: 5,
              header: "header",
              body: "body"
          }]
      }),
      done();
    }, 0)
  })


})
