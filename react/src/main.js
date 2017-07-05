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
