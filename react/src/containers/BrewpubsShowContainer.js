import React, {Component} from 'react';
import BrewpubComponent from '../components/BrewpubComponent'
import ReviewComponent from '../components/ReviewComponent'

class BrewpubsShowContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      brewpub: {},
      reviews: []
    }
  }

  componentDidMount(){
    let url = location.pathname
    fetch(`/api/v1/${url}/`)
    .then(response => {
      if (response.ok) {
        return response.json();
      } else {
        let errorMessage = `${response.status} ${response.statusText}`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(body => {
      this.setState({
        brewpub: body[0],
        reviews: body[1]
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    let reviewComponents = this.state.reviews.map((review) => {
      return (
        <ReviewComponent
          key = {review.id}
          id = {review.id}
          rating = {review.rating}
          header = {review.header}
          body = {review.body}
        />
      )
    })

    return(
      <div>
        <BrewpubComponent
          key = {this.state.brewpub.id}
          id = {this.state.brewpub.id}
          name = {this.state.brewpub.name}
          address  = {this.state.brewpub.address}
          city = {this.state.brewpub.city}
          state= {this.state.brewpub.state}
          zip = {this.state.brewpub.zip}
          description = {this.state.brewpub.description}
          website_url = {this.state.brewpub.website_url}
          img_url = {this.state.brewpub.img_url}
          logo_url = {this.state.brewpub.logo_url}
          phone_number = {this.state.brewpub.phone_number}
          contact_email = {this.state.brewpub.contact_email}
          user_id = {this.state.brewpub.user_id}
          rating = {this.state.brewpub.rating}
          hours = {this.state.brewpub.hours}
          beers = {this.state.brewpub.beers}
          tours = {this.state.brewpub.tours}
          facebook_url = {this.state.brewpub.facebook_url}
          twitter_url = {this.state.brewpub.twitter_url}
          instagram_url = {this.state.brewpub.instagram_url}
        />
        <hr />
        <h1> Reviews </h1>
        {reviewComponents}
      </div>
    )
  }
}

export default BrewpubsShowContainer;
