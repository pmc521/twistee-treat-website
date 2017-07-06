import React, { Component } from 'react';
import User from './user';
import Post from './post';

class Feed extends Component {
  constructor(props) {
    super(props);
    this.state = {
      users: [],
      post: '',
      posts: []
    }
    this.updatePost = this.updatePost.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDeletePost = this.handleDeletePost.bind(this);
  }

  updatePost(event) {
    event.preventDefault();
    this.setState({ post: event.target.value });
  }

  handleSubmit(event) {
    $.ajax({
      url: '/api/v1/posts',
      method: 'POST',
      data: {
        body: this.state.post
      },
      success: function(data, success, xhr) {
        console.log(data)
      }
    })
  }

  handleDeletePost(event) {
    let id = event.target.value;
    console.log(id);
    $.ajax({
      url: '/api/v1/posts/' + id,
      method: 'DELETE',
      success(response) {
          console.log('successfully removed item')
      }
    })
  }

  retrieveUsers() {
    $.ajax({
      url: '/api/v1/users',
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ users: data });
    });
  }

  retrievePosts() {
    $.ajax({
      url: '/api/v1/posts',
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ posts: data.reverse() });
    });
  }

  findUser(userId) {
    return this.state.users === userId;
  }

  componentDidMount() {
    this.retrieveUsers();
    this.retrievePosts();
  }

  render() {

    let users = this.state.users
    let user = users.map(user => {
      return (
        <User
        key={user.id}
        UserId={user.id}
        email={user.email}
        phoneNumber={user.phone_number}
        firstName={user.first_name}
        lastName={user.last_name}
        />
      );
    });

    let post = this.state.posts.map(post => {
      let user = users[users.findIndex(obj => obj.id == post.user_id)];
      return (
        <Post
        key={post.id}
        postId={post.id}
        body={post.body}
        userFirstName={user.first_name}
        userLastName={user.last_name}
        userAvatar={user.avatar.url}
        users={users}
        handleDeletePost={this.handleDeletePost}
        />
      );
    });

    return (
      <div>
        <div className="row">
            <form onSubmit={this.handleSubmit}>
              <label>
                <div className="small-12 columns medium-6 columns large-6 large-centered columns">
                  <input
                    className="post"
                    placeholder="Post"
                    type="text"
                    value={this.state.post}
                    onChange={this.updatePost}
                  />
                </div>
              </label>
            </form>
        </div>
        <div className="row">
          <div className="small-12 columns medium-6 columns large-6 large-centered columns">
            {post}
          </div>
        </div>
      </div>
    );
  }
};

export default Feed;
