import React, { Component } from 'react';
import Day from './Day';

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

    <div>
      let days = this.state.schedules.map(schedule => {
        return (
          <Day
          key={schedule.id}
          schedualId={schedule.id}
          userId={schedule.user}
          shiftId={schedule.shift}
          />
        );
      });
    </div>

    return (
      <div className="food-box">
        {days}
      </div>
    );
  }
};

export default Schedule;
