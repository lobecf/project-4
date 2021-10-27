import React, { useState } from "react";

function CreatePresetStory ( {setUserStoryInfo} ) {
    const [mainCharacter, setMainCharacter] = useState("");
    const [typeOfHorror, setTypeOfHorror] = useState("");
    const [setting, setSetting] = useState("");
    const [liveOrDie, setLiveOrDie] = useState("");
  
    function handleSubmit(e) {
      e.preventDefault();
      fetch("/preset-story", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          mainCharacter,
          typeOfHorror,
          setting,
          liveOrDie,
        }),
      }).then((r) => {
        if (r.ok) {
          r.json().then((user) => setUserStoryInfo(user));
        }
      });
    }

    return (
        <div>
            <form onSubmit={handleSubmit}>
                <label htmlFor="main-character">Main Character</label>
                <input
                type="text"
                autoComplete="off"
                value={mainCharacter}
                onChange={(e) => setMainCharacter(e.target.value)}
                />
                <label htmlFor="type-of-horror">Type of Horror</label>
                <input
                type="text"
                value={typeOfHorror}
                onChange={(e) => setTypeOfHorror(e.target.value)}
                />
                <label htmlFor="setting">Setting</label>
                <input
                type="text"
                value={setting}
                onChange={(e) => setSetting(e.target.value)}
                />
                <label htmlFor="live-or-die">Live or Die</label>
                <input
                type="text"
                value={liveOrDie}
                onChange={(e) => setLiveOrDie(e.target.value)}
                />
                
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default CreatePresetStory;