import React, { useState } from "react";

function YourStories ( { user, userStories } ) {
 

    // function handleDeleteClick() {
    //     fetch("/delete-story", { method: "DELETE" }).then((r) => {
    //     if (r.ok) {
    //         setUser(null);
    //     }
    //     });

    return (
    <div>
        {user.stories.id.map(story => (
            <div key={story.id}>
                <p>{story.name}</p>
                <p>{story.body_text}</p>
                <img src={story.images}/>
                <img src={story.gifs}/>
            </div>))}
    </div>
    )
}

export default YourStories;