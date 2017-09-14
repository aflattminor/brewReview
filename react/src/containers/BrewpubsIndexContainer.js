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
            image = {brewpub.img_url}
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
          <form className="search">
          <input className="search"
            type="text"
            name="Search"
            placeholder="Search"
            value={this.state.search}
            onChange={this.updateSearch}
          />
          </form>
          <br />
          <div className="grid-container">
          <div className="grid-x grid-padding-x">
                {filteredBrewpubs.map((brewpub)=>{
                  return  <div className= "large-shrink cell tile">
                        <Link to={`/brewpubs/${brewpub.id}`} key={brewpub.id}>
                            <BrewpubComponent
                              key = {brewpub.id}
                              id = {brewpub.id}
                              name = {brewpub.name}
                              logo_url = {brewpub.logo_url}
                              />
                          </Link>
                          </div>
                })}
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default BrewpubsIndexContainer;
