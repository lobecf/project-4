import React, { useEffect, useState } from "react";

function YourStory ( { user, userStories } ) {

    return (
        <div className="story-container">
            <p>userstory here</p>
            {userStories.map((story) => (
            <div key={story.id}>
                <p>{story.name}</p>
                <p>{story.body_text}</p>
                <img src={story.images}/>
                <img src={story.gifs}/>
            </div>))}
        </div>
    )
}

export default YourStory



