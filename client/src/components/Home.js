import React, {useState} from "react";
import CreatePresetStory from "./CreatePresetStory";
import YourStories from "./YourStories";
import LikedStories from "./LikedStories";
import SearchStories from "./SearchStories";

function Home({ user }) {
  
  const [showComponent, setShowComponent] = useState("")
  
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
      <div>
        <p>{user.username}</p>
        <div>
          <button onClick={handleClick} name="create-story">Create Stories</button>
          { showComponent === "create-story" && <CreatePresetStory/> }
        </div>
        <div>
          <button onClick={handleClick} name="your-stories">Your Stories</button>
          { showComponent === "your-stories" && <YourStories/> }
        </div>
        <div>
          <button onClick={handleClick} name="your-liked-stories">Liked Stories</button>
          { showComponent === "your-liked-stories" && <LikedStories/> }
        </div>
        <div>
          <button onClick={handleClick} name="search-stories">Search Stories</button>
          { showComponent === "search-stories" && <SearchStories/> }
        </div>
      </div>
      )
    } else {
      return <div></div>;
    }
  }
  
  export default Home;