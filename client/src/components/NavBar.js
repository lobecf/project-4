import React from "react";
import { Link } from "react-router-dom";

function NavBar({ user, setUser }) {
  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }

  return (
    <header className="nav-bar-container">
      <h1>Horror Story</h1>
      <div>
      <Link className="nav-bar-link" to="/">Home</Link>
        {user ? (
          <button className="logout-btn" onClick={handleLogoutClick}>Logout</button>
        ) : (
          <>
            <Link className="nav-bar-link" to="/signup">Signup</Link>
            <Link className="nav-bar-link" to="/login">Login</Link>
          </>
        )}
      </div>
    </header>
  );
}

export default NavBar;