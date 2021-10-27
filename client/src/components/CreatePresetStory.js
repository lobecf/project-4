import React, { useState } from "react";
import Dropdown from 'react-bootstrap/Dropdown'
import DropdownButton from 'react-bootstrap/DropdownButton';

import 'bootstrap/dist/css/bootstrap.min.css';

function CreatePresetStory ( ) {
    const [mainCharacter, setMainCharacter] = useState("");
    const [optionsType, setTypeOfHorror] = useState("");
    const [settingsType, setSetting] = useState("");
    const [liveType, setLiveOrDie] = useState("");
  
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
          r.json().then((user) => console.log(user));
        }
      });
    }
    const handleOption=(e)=>{
      console.log(e);
      setTypeOfHorror(e)
    }
    const handleSetting=(e)=>{
      console.log(e);
      setSetting(e)
    }
    const handleLive=(e)=>{
      console.log(e);
      setLiveOrDie(e)
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
                <DropdownButton onSelect={handleOption} id="options" title="Select horror genre">
                  <Dropdown.Item href="#/slasher">Slasher</Dropdown.Item>
                  <Dropdown.Item href="#/monster">Monster</Dropdown.Item>
                  <Dropdown.Item href="#/child">Evil Child</Dropdown.Item>
                </DropdownButton>
                <DropdownButton onSelect={handleSetting} id="setting" title="Select your setting">
                  <Dropdown.Item href="#/college">College</Dropdown.Item>
                  <Dropdown.Item href="#/mythology">Mythology</Dropdown.Item>
                  <Dropdown.Item href="#/scifi">Sci-Fi</Dropdown.Item>
                  <Dropdown.Item href="#/gothic">Gothic</Dropdown.Item>
                </DropdownButton>
                <DropdownButton onSelect={handleLive} id="live" title="Do you live or die?">
                  <Dropdown.Item href="#/live">Live 👼</Dropdown.Item>
                  <Dropdown.Item href="#/die">Die 💀</Dropdown.Item>
              </DropdownButton>
            <button type="submit">submit</button>
            </form>
        </div>
    )
}

export default CreatePresetStory;