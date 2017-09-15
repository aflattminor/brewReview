import React from 'react';

const BrewpubComponent = props => {


  let pub_image;
  if(props.img_url != null){
      pub_image = <img className="image" src={props.img_url}></img>
  }

  let webIcon=<i className="fa fa-home" aria-hidden="true"></i>;

  let website_url;
  if(props.website_url != null){
    website_url = <a href={props.website_url}><h2>{webIcon}</h2></a>
  }

  let fbIcon = <i className="fa fa-facebook" aria-hidden="true"></i>;

  let facebook_url;
  if(props.facebook_url != null){
    facebook_url =  <a href={props.facebook_url}><h2>{fbIcon}</h2></a>
  }

  let twitterIcon = <i className="fa fa-twitter" aria-hidden="true"></i>;

  let twitter_url;
  if(props.twitter_url != null){
    twitter_url = <a href={props.twitter_url}><h2>{twitterIcon}</h2></a>
  }

  let instaIcon= <i className="fa fa-instagram" aria-hidden="true"></i>;

  let instagram_url;
  if(props.instagram_url != null){
    instagram_url =  <a href={props.instagram_url}><h2>{instaIcon}</h2></a>
  }

  return(
    <div>
    <div className="index-container">
      <span className="image-info">
        <img src={props.logo_url} className='logo'></img>
        <div className="brewpub-show">
        <h1 className="name">{props.name}</h1>
        <br />
        </div>
      </span>
          <span className="image-info">
            {pub_image}
          </span>
        <div className="index-container">
          <div className="info">
          <h2>{props.description}</h2>
          </div>
          <div className="info">
            <h2>{props.address}</h2>
            <h2>{props.city} {props.state}</h2>
            <h2>{props.zip}</h2>
            <h2>{props.phone_number}</h2>
          </div>
          <div className="info index-container">
          <h2>{props.hours}</h2>
          </div>
          <div clasName="info">
          <span className="info social">
              {website_url}
          </span>
          <span className="info social">
              {facebook_url}
          </span>
          <span className="info social">
              {twitter_url}
          </span>
          <span className="info social">
              {instagram_url}
          </span>
          </div>
        </div>
      </div>
    </div>
  )
}

export default BrewpubComponent;
