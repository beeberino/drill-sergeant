import React from 'react';
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";
import Programs from './components/Programs.js'
import './App.css';

function App() {

  return (
    <div className="App">
      <Router>
        <div>
          <nav>
            <ul>
              <li>
                <Link to="/programs">Programs</Link>
              </li>
            </ul>
          </nav>

          <Switch>
            <Route path="/programs">
              <Programs />
            </Route>
          </Switch>
        </div>
      </Router>
    </div>
  );
}

export default App;
