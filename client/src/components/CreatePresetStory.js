import React, { useState } from "react";
import Dropdown from 'react-bootstrap/Dropdown'
import DropdownButton from 'react-bootstrap/DropdownButton';

import 'bootstrap/dist/css/bootstrap.min.css';

function CreatePresetStory ( ) {
    const [main_character, setMainCharacter] = useState("");
    const [options_type, setTypeOfHorror] = useState("");
    const [settings_type, setSetting] = useState("");
    const [live_type, setLiveOrDie] = useState("");
  
    function handleSubmit(e) {
      e.preventDefault();
      fetch("/preset-story", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          main_character,
          options_type,
          settings_type,
          live_type,
        }),
      }).then((r) => {
        if (r.ok) {
          r.json().then((storyInfo) => console.log(storyInfo));
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
            <form className="create-story-container" onSubmit={handleSubmit}>
                <input className="login-signup-form"
                type="text"
                placeholder="Type main character"
                autoComplete="off"
                value={main_character}
                onChange={(e) => setMainCharacter(e.target.value)}
                />
                <DropdownButton className="login-signup-form" onSelect={handleOption} id="options" title="Select horror genre">
                  <Dropdown.Item href="#/slasher">Slasher</Dropdown.Item>
                  <Dropdown.Item href="#/monster">Monster</Dropdown.Item>
                  <Dropdown.Item href="#/child">Evil Child</Dropdown.Item>
                </DropdownButton>
                <DropdownButton className="login-signup-form" onSelect={handleSetting} id="setting" title="Select your setting">
                  <Dropdown.Item href="#/college">College</Dropdown.Item>
                  <Dropdown.Item href="#/mythology">Mythology</Dropdown.Item>
                  <Dropdown.Item href="#/scifi">Sci-Fi</Dropdown.Item>
                  <Dropdown.Item href="#/gothic">Gothic</Dropdown.Item>
                </DropdownButton>
                <DropdownButton className="login-signup-form" onSelect={handleLive} id="live" title="Do you live or die?">
                  <Dropdown.Item href="#/live">Live 👼</Dropdown.Item>
                  <Dropdown.Item href="#/die">Die 💀</Dropdown.Item>
              </DropdownButton>


            <button className="login-signup-button" type="submit">submit</button>
            </form>
        </div>
    )
}

export default CreatePresetStory;