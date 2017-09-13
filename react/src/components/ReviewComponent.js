import React from 'react';

class ReviewComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating:this.props.rating,
      header: this.props.header,
      body: this.props.body,
      votes: [],
      totalVotes: 0

    }
    this.handleUpvote = this.handleUpvote.bind(this)
    this.handleDownvote = this.handleDownvote.bind(this)
    this.addVote = this.addVote.bind(this)
  }

  handleUpvote(event){
    let votepayload = {
      user_vote: 1,
      review_id: this.props.id
    }
    this.setState({totalVotes: this.state.totalVotes + 1})
    this.addVote(votepayload)
  }

  handleDownvote(event){
    let votepayload = {
      user_vote:  - 1,
      review_id: this.props.id
    }
    this.setState({totalVotes: this.state.totalVotes - 1})

    this.addVote(votepayload)
  }

  addVote(votepayload) {
    let path = location.pathname
    fetch(`/api/v1/${path}/reviews/${this.props.id}/votes`, {
      credentials: 'same-origin',
      method: 'POST',
      body: JSON.stringify(votepayload)
    })
    // .then(response => {
    //   let newVote= response.json()
    //   return newVote
    // })
    // .then(newVote => {
    //
    //   this.setState({
    //     votes: [newVote, ...this.state.votes],
    //     totalVotes: this.state.totalVotes + 1
    //    })
    // })
  }


  componentDidMount() {
    let path = location.pathname
    fetch(`/api/v1/${path}/reviews/${this.props.id}/votes`)
    .then(response => {
      return response.json()
    })
    .then(body => {
      this.setState({
        votes: body[0],
        totalVotes: body[1]

      })
    })
  }
  render() {
    return (
      <div className="ReviewComponent">
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
