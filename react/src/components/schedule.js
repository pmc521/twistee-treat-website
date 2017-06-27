import React, { Component } from 'react';

class Schedule extends Component {
  constructor(props) {
    super(props);
    this.state = {
      schedules: [],
    }

  }


  retrieveSchedules() {
    $.ajax({
      url: '/api/v1/schedules',
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ schedules: data });
    });
  }

  componentDidMount() {
    this.retrieveSchedules();
    setInterval(this.retrieveFoods, 5000)
  }

  render() {


    return (
      <div>
        {this.state.schedules}
      </div>

    );
  }
};

export default Schedule;
