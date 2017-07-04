import React, { Component } from 'react';

class Post extends Component{

  render() {
    //let cardStyle = {height: 200, width: 150, padding: 0, backgroundColor: "#FFF", WebkitFilter: "drop-shadow(0px 0px 5px #666)", filter: "drop-shadow(0px 0px 5px #666)"};
    return(
          <div className="card">
            <div className="card-section">{this.props.userFirstName} {this.props.userLastName}</div>
            <div className="card-section">{this.props.body}</div>
          </div>

    )
  }
};

export default Post;
