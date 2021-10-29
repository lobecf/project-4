import React, { useState } from "react";
import YourStory from "./YourStory";

function YourStories ( { user, userStories } ) {
 
    const [selectStory, setSelectStory] = useState(true)
    const [deleteStory, setDeleteStory] = useState()
    const [updateStory, setUpdateStory] = useState()

    function handleDeleteClick(e) {
        e.preventDefault();
        fetch("/delete-story", { method: "DELETE" }).then((r) => {
        if (r.ok) {
            setDeleteStory(null);
        }
        });
    }

    function handleUpdateClick(e) {
        e.preventDefault();
        // fetch("/update", { 
        //     method: "PATCH",
        //     headers: {
        //         "Content-Type": "application/json",
        //       },
        //       body: JSON.stringify({
        //         main_character,
        //         options_type,
        //         settings_type,
        //         live_type,
        //       }),
        //     }).then((r) => {
        //       if (r.ok) {
        //         r.json().then((storyInfo) => setUpdateStory(storyInfo));
        //       }
        //     });
          }
  
    function handleClick (e) {
        e.preventDefault();
        setSelectStory (!selectStory)
    }

    return (
    <div>
        <div className="story-container-2">
            <button className="profile-bar-button-2" onClick={handleClick}>Story Title</button>
            <button className="remove-button" onClick={handleDeleteClick}>(remove story)</button>
            <button className="remove-button" onClick={handleUpdateClick}>(update story)</button>
            {selectStory === false ? <YourStory user={user} userStories={userStories}/> : null}
            {userStories.map((story) => (
            <div key={story.id}>
                <button>{story.name}</button>
            </div>))}
        </div>

    </div>
    )
}

export default YourStories