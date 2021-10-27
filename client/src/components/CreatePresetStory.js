import React, { useState } from "react";
import Dropdown from 'react-dropdown';
import 'react-dropdown/style.css';

function CreatePresetStory ( {setUserStoryInfo} ) {
    const [mainCharacter, setMainCharacter] = useState("");
    const [optionsType, setTypeOfHorror] = useState(["Select horror genre", "Slasher", "Monster", "Evil Child"]);
    const [settingsType, setSetting] = useState(["Select setting", "College", "Mythology", "Sci-Fi", "Gothic"]);
    const [liveType, setLiveOrDie] = useState(["Do you live or die?", "live", "die"]);
  
    function handleSubmit(e) {
      e.preventDefault();
      fetch("/preset-story", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          mainCharacter,
          optionsType,
          settingsType,
          liveType,
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
                <Dropdown 
                options={optionsType} 
                onChange={(e) => setTypeOfHorror(e.target.value)} 
                value={optionsType[0]} 
                title="Select a horror genre" />
                <Dropdown 
                options={settingsType} 
                onChange={(e) => setSetting(e.target.value)} 
                value={settingsType[0]} 
                placeholder="Select a setting" />
                <Dropdown 
                options={liveType} 
                onChange={(e) => setLiveOrDie(e.target.value)} 
                value={liveType[0]} 
                placeholder="Select a horror genre" />
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default CreatePresetStory;