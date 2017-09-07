import React from 'react';

const BrewpubComponent = props => {

  return(
    <div>
      <h1>{props.name}</h1>
      <h2>{props.address}</h2>
      <h2>{props.city}</h2>
      <h2>{props.zip}</h2>
      <h2>{props.description}</h2>
      <h2>{props.phone_number}</h2>
    </div>
  )
}

export default BrewpubComponent;
