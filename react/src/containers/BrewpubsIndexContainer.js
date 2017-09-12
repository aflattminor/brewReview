import React, {Component} from 'react';
import BrewpubComponent from '../components/BrewpubComponent'
import {Link} from 'react-router-dom';

class BrewpubsIndexContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      brewpubs: [],
      search: ''
    }
    this.updateSearch = this.updateSearch.bind(this)
  }

  updateSearch(event) {
    this.setState({search: event.target.value.substr(0, 20)});
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

    let filteredBrewpubs = this.state.brewpubs.filter(
      (brewpub) => {
        return brewpub.name.toLowerCase().indexOf(
          this.state.search.toLowerCase()) !== -1;
      }

    )
    return(
      <div>
        <div>
          <h1>Brewpubs</h1>
          <form>
          <input className="Search"
            type="text"
            name="Search"
            placeholder="Search"
            value={this.state.search}
            onChange={this.updateSearch}
          />
          </form>
          <div>
            <ul>
              {filteredBrewpubs.map((brewpub)=>{
                return  <Link to={`/brewpubs/${brewpub.id}`} key={brewpub.id}>
                          <BrewpubComponent
                            key = {brewpub.id}
                            id = {brewpub.id}
                            name = {brewpub.name}
                            />
                        </Link>
              })}
            </ul>
          </div>
        </div>
      </div>
    )
  }
}

export default BrewpubsIndexContainer;
