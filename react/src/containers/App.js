import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import BrewpubsIndexContainer from './BrewpubsIndexContainer';
import BrewpubsShowContainer from './BrewpubsShowContainer';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {

    }
  }

  render() {
    return(
      <BrowserRouter>
        <Switch>
          <Route exact path="/brewpubs" component={BrewpubsIndexContainer} />
          <Route exact path="/brewpubs/:id" component={BrewpubsShowContainer} />
        </Switch>
     </BrowserRouter>
    )
  }
}

export default App;
