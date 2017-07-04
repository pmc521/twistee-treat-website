import React, { Component } from 'react';

class User extends Component{

  render() {
    //let cardStyle = {height: 200, width: 150, padding: 0, backgroundColor: "#FFF", WebkitFilter: "drop-shadow(0px 0px 5px #666)", filter: "drop-shadow(0px 0px 5px #666)"};
    return(
          <div className="name">
            <div className="name">{this.props.firstName}</div>
          </div>

    )
  }
};

export default User;
