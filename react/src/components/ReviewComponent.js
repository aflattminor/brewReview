import React from 'react';

const ReviewComponent = props => {

  return(
    <div>
      <h2>Rating: {props.rating} </h2>
      <h2>{props.header}</h2>
      <p>{props.body}</p>
    </div>
  )
}

export default ReviewComponent;
