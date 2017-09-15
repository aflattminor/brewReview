import React from 'react';

class ReviewComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating:this.props.rating,
      header: this.props.header,
      totalVotes: 0

    }
    this.handleUpvote = this.handleUpvote.bind(this)
    this.handleDownvote = this.handleDownvote.bind(this)
    this.addVote = this.addVote.bind(this)
    this.countVote = this.countVote.bind(this)
    this.deleteReview = this.deleteReview.bind(this)
  }

  addVote(votepayload) {
    let path = location.pathname
    fetch(`/api/v1/${path}/reviews/${this.props.id}/votes`, {
      credentials: 'same-origin',
      method: 'POST',
      body: JSON.stringify(votepayload)
    })
  }

  countVote(){
    setTimeout(function(){
      let path = location.pathname
      fetch(`/api/v1/${path}/reviews/${this.props.id}/votes`)
      .then(response => {
        return response.json()
      })
      .then(body => {
        this.setState({
          totalVotes: body
        })
      }
    )}.bind(this), 100)
  }

  handleUpvote(event){
    let votepayload = {
      user_vote: 1,
      review_id: this.props.id
    }
    this.addVote(votepayload)
    this.countVote()
  }

  handleDownvote(event){
    let votepayload = {
      user_vote:  - 1,
      review_id: this.props.id
    }
    this.addVote(votepayload)
    this.countVote()
  }

  deleteReview(){
    let path = location.pathname
    fetch(`/api/v1/${path}/reviews/${this.props.id}`, {
      credentials: 'same-origin',
      method: 'DELETE'
    })
    this.props.aggregateReview()
  }

  componentDidMount() {
    let path = location.pathname
    fetch(`/api/v1/${path}/reviews/${this.props.id}/votes`)
    .then(response => {
      return response.json()
    })
    .then(body => {
      this.setState({
        totalVotes: body
      })
    })
  }

  render() {
    let deleteButton;
    if(this.props.currentUser != null){
      if(this.props.currentUser.id == this.props.userId || this.props.currentUser.admin == true){
        deleteButton = <input type='button' value='Delete this review'  className="button" onClick={this.deleteReview} />
      }
    }
    return (
      <div className="review-component">
       <h2>Rating: {this.props.rating}</h2>
       <h2>{this.props.header}</h2>
       <p>{this.props.body}</p>
       <div className="voting">
       <a onClick={this.handleUpvote}>▲ LIKE</a> |
       <a onClick={this.handleDownvote}> DISLIKE ▼ </a>
       </div>
       <br />
       <strong>{this.state.totalVotes}</strong>
       <br />
        {deleteButton}
      </div>
    );
  }
}

export default ReviewComponent;
