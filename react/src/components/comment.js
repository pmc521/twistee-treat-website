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
    this.handleDeleteComment = this.handleDeleteComment.bind(this);
  }

  updateComment(event) {
    event.preventDefault();
    this.setState({ comment: event.target.value });
  }

  retrieveComments() {
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

  handleDeleteComment(event) {
    let id = event.target.value;
    $.ajax({
      url: '/api/v1/comments/' + id,
      method: 'DELETE',
      success(response) {
        console.log('successfully removed item')
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
            <div className=""><hr></hr>
              <div className="row">
                <div className="card-section">
                  <div className="float-left">
                    <img
                      src={user.avatar.url}
                      id="profile-picture"
                      style={{padding: 10, height: 50}}
                     />
                    {user.first_name} {user.last_name}
                  </div>
                  <form className="float-right">
                    <button type="submit" name="Delete" value={comment.id} onClick={this.handleDeleteComment} >
                      Delete
                    </button>
                  </form>
                </div>
              </div>
              <div className="row">
                <div className="card-section">
                  {comment.body}
                </div>
              </div>
            </div>
          )
        };
      }
    );
    return(
      <div className="row">
        <div className="row">
          <div className="small-11 small-centered columns medium-11 medium-centered columns large-11 large-centered columns">
            {filteredcomments}
          </div>
        </div>
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
      </div>
    )
  }
};

export default Comment;
