import React, { Component } from 'react';

class Comment extends Component{
  constructor(props) {
    super(props);
    this.state = {
      comment: '',
      comments: []
    }
    this.updateComment = this.updateComment.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  updateComment(event) {
    event.preventDefault();
    this.setState({ comment: event.target.value });
  }

  retrieveComments() {
    event.preventDefault();
    $.ajax({
      url: '/api/v1/comments',
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ comments: data });
    });
  }

  handleSubmit(event) {
    $.ajax({
      url: '/api/v1/comments',
      method: 'POST',
      data: {
        body: this.state.comment,
        post: this.props.postId
      },
      success: function(data, success, xhr) {
      }
    })
  }
  componentDidMount() {
    this.retrieveComments();
  }

  render() {
    let users = this.props.users
    let filteredcomments = this.state.comments.map(
      (comment) => {
        if (comment.post_id == this.props.postId) {
          let user = users[users.findIndex(obj => obj.id == comment.user_id)];
          return (
            <div className="card">
              <div className="card-section">
                {user.first_name} {user.last_name}
              </div>
              <div className="card-section">
                {comment.body}
              </div>
            </div>
          )
        };
      }
    );
    return(
      <div className="row">
        <form onSubmit={this.handleSubmit}>
          <div className="small-12 small-centered columns medium-12 medium-centered columns large-12 large-centered columns">
            <input
              className="comment"
              placeholder="Comment"
              type="text"
              value={this.state.comment}
              onChange={this.updateComment}
            />
          </div>
        </form>
        <div className="row">
          <div className="small-11 small-centered columns medium-11 medium-centered columns large-11 large-centered columns">
            {filteredcomments}
          </div>
        </div>
      </div>
    )
  }
};

export default Comment;
