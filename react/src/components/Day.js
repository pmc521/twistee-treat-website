import React, { Component } from 'react';
import Shift from './Shift'

class Day extends Component{

  render() {
    return(
          <div>
            <Shift shift={this.props.shift.} />
          </div>
    )
  }
};

export default Day;
