class UserStory < ApplicationRecord
  belongs_to :story
  belongs_to :user


  def create_story(main, chooser, alive)
    main = main
    if chooser == 1 && alive == true 
        place = "Holy Pyramid"
        monster = "Mummy of Ramses"
        killing = "had bludgeoned all the temple priests, along with the prophetess, to death"
        old = "papyrus hut"
        weapon = "Pharaoh’s scepter"
        explanation = "All the sunlight coming in through the vents focused on one shiny object: the Staff of Anubis! The holy staff was held by a statue of the god, his jackal head leering and ominous. #{main} ran forward and pulled the staff out."
        tool = "Staff of Anubis"
        live = "The Mummy of Ramses ambled towards you and moaned the horrific cry of the damned. It raised its scepter to smash your brains out of #{main}’s vulnerable head! However, right when the blow came down #{main} dove out of the way! #{main} smiled for the first time since this ordeal began—they jabbed the Staff of Anubis into the bandaged brute, and it shriveled up into ash. The day had been won! #{main} was safe and the savior of Egypt!"
    elsif chooser == 1 && alive == false
        place = "Holy Pyramid"
        monster = "Mummy of Ramses"
        killing = "had bludgeoned all the temple priests, along with the prophetess, to death"
        old = "papyrus hut"
        weapon = "Pharaoh’s scepter"
        explanation = "All the sunlight coming in through the vents focused on one shiny object: the Staff of Anubis! The holy staff was held by a statue of the god, his jackal head leering and ominous. #{main} ran forward and pulled the staff out."
        tool = "Staff of Anubis"
        live = "The Mummy of Ramses came forward slowly. It lifted that horrible scepter into the air, but #{main} countered with a thrust of the scepter into the Mummy’s chest. #{main} couldn’t see the monster’s face, but they guessed it had a smile. #{main}’s last thought as the scepter flew down into their face was that even with a supernatural weapon, they were only… well, natural."
    elsif chooser == 2 && alive == true
        place = "ancient spaceship’s armory" 
        monster = "intergalactic hunter"
        killing = "had blasted #{main}’s entire crew to death… everyone from the chef to the marines"
        old = "sewers"
        weapon = "spear" 
        explanation = "Most of the weapons in this wrecked spaceship were worthless, but #{main} spotted an intact suit of advanced armor. #{main} pulled the armor down—it was far too heavy for a human, but inside of it there was a surprise! #{main} pulled out a functioning plasma rifle!"
        tool = "plasma rifle"
        live = "The intergalactic hunter removed its armored mask, revealing a hideous face—it looked like the disfigured offspring of a bat and a scorpion. The hunter dove onto a column. It was so agile. The hunter smiled as it trained its shoulder blasters on #{main}. #{main} feigned fear… the monster loved that. It cackled as #{main} cried. Suddenly, #{main} lifted their plasma rifle and fired a shot. It struck the hunter in the chest. The monster went for its spear, but #{main} pulled the rifle up. \"You are one ugly mother…\" #{main} said as it pulled the trigger to end the hunter’s reign of terror."

    elsif chooser == 2 && alive == false
        place = "ancient spaceship’s armory" 
        monster = "intergalactic hunter"
        killing = "had blasted #{main}’s entire crew to death… everyone from the chef to the marines"
        old = "sewers"
        weapon = "spear" 
        explanation = "Most of the weapons in this wrecked spaceship were worthless, but #{main} spotted an intact suit of advanced armor. #{main} pulled the armor down—it was far too heavy for a human, but inside of it there was a surprise! #{main} pulled out a functioning plasma rifle!"
        tool = "plasma rifle"
        live = "The intergalactic hunter raised their spear. #{main} knew this was their time to shine. They raised the gun up and the hunter showed fear for the first time. Suddenly, the hunter began to laugh. They clicked a button on their vest and became invisible. Not only was this demonic hunter far beyond anything human, but it also could cloak! At least #{main} never saw the spear coming."
    
    elsif chooser == 3 && alive == true
        place = "frat house"
        monster = "killer zombie in a hockey mask"
        killing = "had slayed every member of five fraternities and sororities"
        old = "library"
        weapon = "machete" 
        explanation = "There on the mantle of the frat house’s fireplace was the fearsome zombie’s great-grandfather’s fraternity pin. The old man had told #{main} that you needed something linked to the monster’s bloodline in order to finally slay it."
        tool = "fraternity pin"
        live = "The killer zombie lurched at #{main} with its machete held high in the air. #{main} knew that it was now or never. #{main} danced closer at the masked slayer and dodged machete slashes like they were a younger Muhammad Ali. The beast cornered #{main} and managed to land a punch to #{main}’s ribs. #{main} slumped down and the monster went for the killing blow, but #{main} jabbed the pin through one of the decrepit eye slits of the hockey mask and into the monster’s head. It bellowed a deep cry of resigned doom and fell to its knees. It was weak… but not finished. #{main} grabbed the machete from the hockey mask killer’s rotted hand and beheaded it with one final stroke. #{main} had saved the college and the town… and they knew that the monster would never return, after all—it isn’t like these things ever come back again, and again, and again."
    
    elsif chooser == 3 && alive == false
        place = "frat house"
        monster = "killer zombie in a hockey mask"
        killing = "had slayed every member of five fraternities and sororities"
        old = "library"
        weapon = "machete" 
        explanation = "There on the mantle of the frat house’s fireplace was the fearsome zombie’s great-grandfather’s fraternity pin. The old man had told #{main} that you needed something linked to the monster’s bloodline in order to finally slay it."
        tool = "fraternity pin"
        live = "The massive zombie stumbled towards #{main}. #{main} could feel its putrid breath seep out from under the hockey mask. #{mask} new it was now or never—they lunged forward and jabbed the pin into the beast’s chest. Tragically, a pin doesn’t go that deep… even if enchanted, it isn’t like it is going to really harm this hulk of a zombie killer. The killer laughed as it slammed that massive machete through #{main} over and over again… #{main}’s cries echoing throughout this town of the damned."
    elsif chooser == 4 && alive == true 
        place = "Palace of Westminster" 
        monster = "Jack the Ripper"
        killing = "had done such horrible things that even Queen Victoria, Empress of the realm that never sees night, herself felt unsafe" 
        old = "haunted pub"
        weapon = "dagger" 
        explanation = "#{main} ran through the House of Lords trying to find the weapon that the old man had told #{main} about. They could hear Jack the Ripper chasing after them, his fiendish cackling trailing at #{main}’s feet. #{main} found an ornate door, slipped inside, and slammed it shut. Jack the Ripper kept slamming his shoulder into the door—it wouldn’t hold forever. #{main} gasped when they realized they had found their weapon: there behind a glass panel was Excalibur… King Arthur’s legendary sword! #{main} shattered the glass with a chair and retrieved the sword just in time."
        tool = "Excalibur"
        live = "Jack the Ripper slid in with a hideous laugh. He wrapped his cloak around himself and advanced on #{main}. He uttered, “One more notch for the old blade.” He raised his dagger high in the air. Suddenly, #{main} froze. #{main} received visions from a past laugh where they were a knight in the employ of King Richard the Lionhearted. Automatically, #{main} made a slash with Excalibur and felled Jack the Ripper. His famous dagger fluttered to the floor. He was barely alive. #{main} lifted the cloak to see that the famous killer was the old man from the pub! “Thank you for stopping me.” He seemed so polite. “I was possessed by a terrible spirit and I knew that only you, #{main} could release me.” Just then the guards rushed in and saw what had happened. #{main} became a hero and was knighted and thanked by Victoria herself!"
    elsif chooser == 4 && alive == false 
        place = "Palace of Westminster" 
        monster = "Jack the Ripper"
        killing = "had done such horrible things that even Queen Victoria, Empress of the realm that never sees night, herself felt unsafe" 
        old = "haunted pub"
        weapon = "dagger" 
        explanation = "#{main} ran through the House of Lords trying to find the weapon that the old man had told #{main} about. They could hear Jack the Ripper chasing after them, his fiendish cackling trailing at #{main}’s feet. #{main} found an ornate door, slipped inside, and slammed it shut. Jack the Ripper kept slamming his shoulder into the door—it wouldn’t hold forever. #{main} gasped when they realized they had found their weapon: there behind a glass panel was Excalibur… King Arthur’s legendary sword! #{main} shattered the glass with a chair and retrieved the sword just in time."
        tool = "Excalibur"
        live = "Jack the Ripper slid in with a hideous laugh. He wrapped his cloak around himself and advanced on #{main}. He uttered, “One more notch for the old blade.” He raised his dagger high in the air. Suddenly, #{main} froze. #{main} received visions from a past laugh where they were a knight in the employ of King Richard the Lionhearted. Automatically, #{main} made a slash with Excalibur and felled Jack the Ripper. His famous dagger fluttered to the floor. #{main} lifted the cloak to see that the famous killer was Lord Salisbury! A legion of guards burst in and saw #{main} holding a sword over the dead Lord. #{main} shouted to wait, but it was too late—they opened fire and unfortunately killed the person who had saved England from Jack the Ripper!"
 




    end
    puts "#{main} ran for the door of the #{place} and pulled it open. #{main} was being chased by the legendary #{monster}. A being so evil and heinous that it #{killing}. The #{monster} was right behind #{main} as they dove in and slammed the door shut. When #{main}’s eyes became accustomed to the darkness they couldn’t believe what they had found!

    The old man in the #{old} had told of this legend! The key to victory was here. It was just too bad that #{monster} had burst through the wall and killed the old man with its #{weapon}. However, here, inside this #{place} was the key to beating this fiend once and for all. #{explanation}. #{main} held the #{tool} up into the air—finally they were filled with hope!

    The door started to burst at the hinges. Terrible gurgling was heard from the disgusting, deformed, deranged #{monster}. The door couldn’t take much more. #{main} held their #{tool} close. The #{monster} erupted into the room, blood and viscera dripping from its #{weapon}. It was now or never! #{live}"



end

end
