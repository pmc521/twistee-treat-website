import React, { Component } from 'react';
import Comment from './comment';

class Post extends Component{

  render() {
    return(
      <div className="card">
        <div className="row">
          <div className="card-section small-11 small-centered columns medium-11 medium-centered columns large-11 large-centered columns">
            <div className="float-left">
              <img
                src={this.props.userAvatar}
                id="profile-picture"
                style={{padding: 10, height: 50}}
               />
              {this.props.userFirstName} {this.props.userLastName}
            </div>
            <form className="float-right">
              <button type="submit" name="Delete" value={this.props.postId} onClick={this.props.handleDeletePost} >
                Delete
              </button>
            </form>
          </div>
        </div>
        <div className="row">
        <div className="card-section small-11 small-centered columns medium-11 medium-centered columns large-11 large-centered columns">
            {this.props.body}
          </div>
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
