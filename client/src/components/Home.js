import React, {useState} from "react";
import CreatePresetStory from "./CreatePresetStory";
import YourStories from "./YourStories";
import LikedStories from "./LikedStories";
import SearchStories from "./SearchStories";

function Home({ user }) {
  const [showCreatePresetStory, setShowCreatePresetStory] = useState(true);
  const [showYourStories, setShowYourStories] = useState(true);
  const [showLikedStories, setShowLikedStories] = useState(true);
  const [showSearchStories, setShowSearchStories] = useState(true);
  
  const handleClick = () => {
    setShowCreatePresetStory (!showCreatePresetStory);
    setShowYourStories (true);
    setShowLikedStories (true);
    setShowSearchStories (true);
  }

  const handleClick2 = () => {
    setShowYourStories (!showYourStories);
    setShowCreatePresetStory (true);
    setShowLikedStories (true);
    setShowSearchStories (true);
  }

  const handleClick3 = () => {
    setShowLikedStories (!showLikedStories);
    setShowSearchStories (true);
    setShowCreatePresetStory (true);
    setShowYourStories (true);
  }

  const handleClick4 = () => {
    setShowSearchStories (!showSearchStories);
    setShowYourStories (true);
    setShowLikedStories (true);
    setShowCreatePresetStory (true);
  }

    if (user) {
      return (
      <div>
        <p>{user.username}</p>
        <div>
          <button onClick={handleClick}>Create Stories</button>
          { showCreatePresetStory === false ? <CreatePresetStory/> : null }
        </div>
        <div>
          <button onClick={handleClick2}>Your Stories</button>
          { showYourStories === false ? <YourStories/> : null }
        </div>
        <div>
          <button onClick={handleClick3}>Liked Stories</button>
          { showLikedStories === false ? <LikedStories/> : null }
        </div>
        <div>
          <button onClick={handleClick4}>Search Stories</button>
          { showSearchStories === false ? <SearchStories/> : null }
        </div>
      </div>
      )
    } else {
      return <div></div>;
    }
  }
  
  export default Home;