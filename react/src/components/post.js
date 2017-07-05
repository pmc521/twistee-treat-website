import React, { Component } from 'react';
import Comment from './comment';

class Post extends Component{

  render() {
    return(
      <div className="card">
        <div className="card-section">
          {this.props.userFirstName} {this.props.userLastName}
        </div>
        <div className="card-section">
          {this.props.body}
        </div>
        <div className="card-section">
          <Comment
            key={this.props.postId}
            postId={this.props.postId}
            users={this.props.users}
          />
        </div>
      </div>
    )
  }
};

export default Post;
