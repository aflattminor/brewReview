import React from 'react';

const BrewpubComponent = props => {

  return(
    <div>
      <img src={props.logo_url} className='logo'></img>
      <div className="brewpub-show">
        <h1>{props.name}</h1>
        <h2>{props.description}</h2>
        <h2>{props.address}</h2>
        <h2>{props.city} {props.state}</h2>
        <h2>{props.zip}</h2>
        <h2>{props.phone_number}</h2>
      </div>
    </div>
  )
}

export default BrewpubComponent;
