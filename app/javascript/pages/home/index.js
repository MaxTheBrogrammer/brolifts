import React from "react";
import PropTypes from "prop-types";
import "bootstrap/dist/css/bootstrap.min.css";

import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";
import Image from "react-bootstrap/Image";
import NavDropdown from "react-bootstrap/NavDropdown";

const Hello = ({ loggedIn, name, imageUrl }) => {
  return (
    <Navbar bg="dark" variant="dark" expand="lg">
      <Navbar.Brand href="/">Brolift</Navbar.Brand>
      <Navbar.Toggle aria-controls="basic-navbar-nav" />
      <Navbar.Collapse id="basic-navbar-nav" className="justify-content-end">
        <Nav>
          {loggedIn ? (
            <React.Fragment>
              <NavDropdown title={name} id="basic-nav-dropdown">
                <NavDropdown.Item href="/logout">Logout</NavDropdown.Item>
              </NavDropdown>
              <Image height={30} src={imageUrl} roundedCircle />
            </React.Fragment>
          ) : (
            <Nav.Link href="/login">Login</Nav.Link>
          )}
        </Nav>
      </Navbar.Collapse>
    </Navbar>
  );
};

Hello.defaultProps = {
  loggedIn: false
};

Hello.propTypes = {
  loggedIn: PropTypes.bool,
  name: PropTypes.string,
  imageUrl: PropTypes.string
};

export default Hello;
