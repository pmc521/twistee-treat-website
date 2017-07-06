import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import Feed from './components/feed';


$(function() {
  ReactDOM.render(
    <Feed />,
    document.getElementById('comments')
  );
});
$(function() {
  ReactDOM.render(
    <iframe
      width="600"
      height="450"
      frameborder="0" style="border:0"
      src="https://www.google.com/maps/embed/v1/place?key=AIzaSyC1l2LQtVPjOcJ1Uk-YLSF1XqohqCOLZyc&q=twistee+treat+philadelphia"
      allowfullscreen>
    </iframe>,
    document.getElementById('app')
  );
});
