import React, { Component } from 'react';
import Dashboard from './modules/Dashboard/Dashboard';

class App extends Component {
  render() {
    return (
      <div className="container-fluid">
        <div className="jumbotron" color='##228B22'>
          <h1 >Order & Out Version 2</h1>
          <p >A web application that allows users to order food.</p>
        </div>
        <Dashboard />
      </div>
    );
  }
}

export default App;
