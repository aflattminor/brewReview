import React, {Component} from 'react';

class ReviewForm extends Component {
  constructor(props){
    super(props);
    this.state = {
      rating: '',
      header: '',
      body: ''
    }
    this.handleItemChange = this.handleItemChange.bind(this)
    this.handleFormSubmit = this.handleFormSubmit.bind(this)
    this.clearForm = this.clearForm.bind(this)
  }

  handleItemChange(event){
    event.preventDefault();
    let stateName = event.target.name
    let value = event.target.value
    this.setState({[stateName]: value})
  }


  clearForm(){
    this.setState({
      rating: '',
      header: '',
      body: '',
      brewpub_id: null,
      user_id: null
    })
  }

  handleFormSubmit(event){
    event.preventDefault();

    let formattedRating;
    switch(this.state.rating){
      case "1":
        formattedRating = 20;
        break;
      case "2":
        formattedRating = 40;
        break;
      case "3":
        formattedRating = 60;
        break;
      case "4":
        formattedRating = 80;
        break;
      case "5":
        formattedRating = 100;
        break;
      default:
        formattedRating = 20;
    }

    let formPayLoad = {
      user_id: 1,
      brewpub_id: this.props.brewpubId,
      rating: formattedRating,
      header: this.state.header,
      body: this.state.body,
      vote_count: 0
    }

    this.props.submitFunction(formPayLoad)

    this.clearForm()
  }


  render() {
    return(
      <form className="review-form" id="review-form" onSubmit={this.handleFormSubmit}>

        <label htmlFor="rating">Rating</label>
        <select className="mugs" name="rating" id="rating" form="review-form" value={this.state.rating} onChange={this.handleItemChange}>
          <option value="1">🍺 </option>
          <option value="2">🍺 🍺 </option>
          <option value="3">🍺 🍺 🍺 </option>
          <option value="4">🍺 🍺 🍺 🍺 </option>
          <option value="5">🍺 🍺 🍺 🍺 🍺 </option>
        </select>
        <br />

        <label htmlFor="header"></label>
        <input name="header" placeholder="Enter a Title" type="text" id="header" value={this.state.header} onChange={this.handleItemChange}/>
        <br />
        <label htmlFor="body"></label>
        <textarea className="review-body" id="body" name="body" placeholder="Enter a Review" value={this.state.body} onChange={this.handleItemChange}/>
        <br />
        <input type="submit" value="Submit" className="button" />

      </form>
    )
  }
}

export default ReviewForm;
