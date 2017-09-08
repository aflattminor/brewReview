import React, {Component} from 'react';
import BrewpubComponent from '../components/BrewpubComponent'
import {Link} from 'react-router-dom';

class BrewpubsIndexContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      brewpubs: []
    }
  }

  componentDidMount(){
    fetch('/api/v1/brewpubs/')
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
        brewpubs: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }


  render() {
    let brewpubComponents = this.state.brewpubs.map((brewpub) => {
      return (
        <Link to={`/brewpubs/${brewpub.id}`} key={brewpub.id}>
          <BrewpubComponent
            key = {brewpub.id}
            id = {brewpub.id}
            name = {brewpub.name}
            />
        </Link>
      )
    })

    return(
      <div>
        <h1>Brewpubs</h1>
        {brewpubComponents}
      </div>
    )
  }
}

export default BrewpubsIndexContainer;
