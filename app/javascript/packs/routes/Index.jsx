import React from "react";
import { BrowserRouter as Router, Route, Routes as ReactRoutes } from 'react-router-dom'
import { Home } from "../components/Home";

const Routes = () => {
  return (
      <Router>
        <ReactRoutes>
        <Route exact path='/' element={<Home/>} />
        </ReactRoutes>
      </Router>
    );
  }
export default Routes
