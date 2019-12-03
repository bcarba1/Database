import React, { Component } from 'react';
import { Link } from "react-router-dom";
import "../styles/viewOrderStyle.css";
import "../styles/commonStyle.css"

class ViewPastaOrderPage extends Component {
  render() {
    return (
      <body>
        <div className="ViewOrderPage" id="container">
          <img id="login_bg" />
          <h1 id="head">View Current Pasta Orders</h1>
          <Table />
        </div>
      </body>
    );
  }
}

class Table extends Component {
  render() {
    return (
      <div>
        <table>
          <tr>
            <th>OrderNum</th>
            <th>Customer ID</th>
            <th>Pasta type</th>
            <th>Sauce</th>
            <th>Ingredients</th>
            <th>Status</th>
          </tr>
          <Row />
        </table>
      </div>
    );
  }
}

class Row extends Component {
  render() {
    return (
      <tr>
        <td>OrderNum</td>
        <td>Customer ID</td>
        <td>Pasta type</td>
        <td></td>
        <td></td>
        <td>Mark as complete button</td>
      </tr>
    );
  }
}


export default ViewPastaOrderPage;