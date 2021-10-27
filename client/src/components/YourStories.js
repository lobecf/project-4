import React, { useEffect, useState } from "react";

function YourStories () {
    // const [selectStory, setSelectStory] = useState([])
    
    // fetch("/stories", {
    //     method: "GET",
    //     headers: {
    //       "Content-Type": "application/json",
    //     },
    //     body: JSON.stringify({ selectStory }),
    //   }).then(r => r.json())
    //   .then(story => setSelectStory(story))

    return (
    <div>
        <button>Story 1</button>
        <button>Story 2</button>
        <button>Story 3</button>
        <button>Story 4</button>
    </div>
    )
}

export default YourStories;