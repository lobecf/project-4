import React, { useState, useEffect } from "react";
import CreatePresetStory from "./CreatePresetStory";
import YourStories from "./YourStories";
import LikedStories from "./LikedStories";
import SearchStories from "./SearchStories";

function Home({ user }) {
  const [showComponent, setShowComponent] = useState("")
  const [userStories, setUserStories] = useState([])

  useEffect(() => {
    fetch(`/user_index/`)
      .then((r) => r.json())
      .then((userStories) => setUserStories(userStories));
  }, []);console.log(userStories)
  
  
  const handleClick = (e) => {
    if (showComponent === e.target.name) {
      setShowComponent (null)
    }
    else {
      setShowComponent (e.target.name)
    }
  }
    if (user) {
      return (
      <div className="profile-bar-container">
        <div className="profile-bar-wrapper">
          <img className="thumbnail" src={user.image_url}/>
          <p className="profile-name">{user.username}'s Profile</p>
        </div>
        <div className="profile-bar-wrapper">
          <img className="thumbnail" src="https://cdn2.iconfinder.com/data/icons/lucid-generic/24/paint_color_palette_art_drawing-512.png"/>  
          <button className="profile-bar-button" onClick={handleClick} name="your-stories">Your Stories</button>
          { showComponent === "your-stories" && <YourStories user={user} userStories={userStories}/> }
        </div>
        <div className="profile-bar-wrapper">
          <img className="thumbnail" src="https://cdn2.iconfinder.com/data/icons/lucid-generic/24/add_new_button_plus_create-1024.png"/>
          <button className="profile-bar-button" onClick={handleClick} name="create-story">Create Stories</button>
          { showComponent === "create-story" && <CreatePresetStory/> }
        </div>
        <div className="profile-bar-wrapper">
          <img className="thumbnail" src="https://cdn2.iconfinder.com/data/icons/lucid-generic/24/heart_like_love_favourite_dating-1024.png"/>
          <button className="profile-bar-button" onClick={handleClick} name="your-liked-stories">Liked Stories</button>
          { showComponent === "your-liked-stories" && <LikedStories/> }
        </div>
        <div className="profile-bar-wrapper">
          <img className="thumbnail" src="https://cdn2.iconfinder.com/data/icons/lucid-generic/24/magnifier_search_discover_zoom_lens-1024.png"/>
          <button className="profile-bar-button" onClick={handleClick} name="search-stories">Search Stories</button>
          { showComponent === "search-stories" && <SearchStories/> }
        </div>
      </div>
      )
    } else {
      return <div></div>;
    }
  }
  
  export default Home;