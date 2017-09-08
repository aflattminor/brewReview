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
      brewpub_id: this.props.brewpubId,
      user_id: this.props.userId,
      rating: formattedRating,
      header: this.state.header,
      body: this.state.body
    }

    this.props.submitFunction(formPayLoad)

    this.clearForm()
  }


  render() {

    return(
      <form className="review-form" id="review-form" onSubmit={this.handleFormSubmit}>

        <label htmlFor="rating">Rating</label>
        <select name="rating" id="rating" form="review-form" value={this.state.rating} onChange={this.handleItemChange}>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
        </select>

        <label htmlFor="header">Title</label>
        <input name="header" type="text" id="header" value={this.state.header} onChange={this.handleItemChange}/>

        <label htmlFor="body">Review</label>
        <textarea id="body" name="body" value={this.state.body} onChange={this.handleItemChange}/>

        <input type="submit" value="Submit" />

      </form>
    )
  }
}

export default ReviewForm;
