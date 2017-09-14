import React, {Component} from 'react';
import BrewpubComponent from '../components/BrewpubComponent';
import ReviewComponent from '../components/ReviewComponent';
import ReviewForm from '../components/ReviewForm';

class BrewpubsShowContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      brewpub: {},
      reviews: [],
      rating: null,
      currentUser: null
    }
    this.addReview = this.addReview.bind(this)
    this.aggregateReview = this.aggregateReview.bind(this)
  }

  aggregateReview(){
    setTimeout(function(){let path = location.pathname
      fetch(`/api/v1/${path}/`)
      .then(response => {
        return response.json();
      })
      .then(body => {
        this.setState({
          brewpub: body[0],
          reviews: body[1],
          rating: body[2]
        })
      })}.bind(this), 100)
  }

  addReview(formPayload) {
    let path = location.pathname
    fetch(`/api/v1/${path}/reviews`, {
      credentials: 'same-origin',
      method: 'POST',
      body: JSON.stringify(formPayload)
    })
    this.aggregateReview()
  }

  componentDidMount(){
    let path = location.pathname
    fetch(`/api/v1/${path}/`, {
      credentials: 'same-origin'
    })
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
        reviews: body[1],
        rating: body[2],
        currentUser: body[3]
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
          aggregateReview = {this.aggregateReview}
          currentUser = {this.state.currentUser}
          userId = {review.user_id}
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
        <div className="rating">
          Brew Review Score: {this.state.rating}
        </div>
        <hr />
        <h1>Reviews</h1>
        {reviewComponents}
        <hr />
        <div className="review-form">
          <ReviewForm brewpubId={this.state.brewpub.id} submitFunction={this.addReview}/>
        </div>
      </div>
    )
  }
}

export default BrewpubsShowContainer;
