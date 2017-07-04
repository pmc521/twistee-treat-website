import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import Comments from './components/comments';


$(function() {
  ReactDOM.render(
    <Comments />,
    document.getElementById('comments')
  );
});
