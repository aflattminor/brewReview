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
      })}.bind(this), 100)
  }

  addVote(votepayload) {
    let path = location.pathname
    fetch(`/api/v1/${path}/reviews/${this.props.id}/votes`, {
      credentials: 'same-origin',
      method: 'POST',
      body: JSON.stringify(votepayload)
    })
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
    return (
      <div className="review-component">
       <h2>Rating: {this.props.rating}</h2>
       <h2>{this.props.header}</h2>
       <p>{this.props.body}</p>
       <a onClick={this.handleUpvote}>Like This Review ▲</a>
       <strong>{this.state.totalVotes}</strong>
        <a onClick={this.handleDownvote}> Hate This Review ▼ </a>
      </div>
    );
  }
}

export default ReviewComponent;
