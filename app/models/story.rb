class Story < ApplicationRecord
    has_many :user_stories
    has_many :users, through: :user_stories

    def create_story(main_character, options_type, settings_type, live_type)
        main = main_character
        if options_type == "#/slasher"
           
            if settings_type == "#/mythology" && live_type == "#/live" 
                place = "Holy Pyramid"
                monster = "Mummy of Ramses"
                killing = "had bludgeoned all the temple priests, along with the prophetess, to death"
                old = "papyrus hut"
                weapon = "Pharaoh’s scepter"
                explanation = "All the sunlight coming in through the vents focused on one shiny object: the Staff of Anubis! The holy staff was held by a statue of the god, his jackal head leering and ominous. #{main} ran forward and pulled the staff out."
                tool = "Staff of Anubis"
                live = "The Mummy of Ramses ambled towards you and moaned the horrific cry of the damned. It raised its scepter to smash your brains out of #{main}’s vulnerable head! However, right when the blow came down #{main} dove out of the way! #{main} smiled for the first time since this ordeal began—they jabbed the Staff of Anubis into the bandaged brute, and it shriveled up into ash. The day had been won! #{main} was safe and the savior of Egypt!"
            elsif settings_type == "#/mythology" && live_type == "#/die" 
                place = "Holy Pyramid"
                monster = "Mummy of Ramses"
                killing = "had bludgeoned all the temple priests, along with the prophetess, to death"
                old = "papyrus hut"
                weapon = "Pharaoh’s scepter"
                explanation = "All the sunlight coming in through the vents focused on one shiny object: the Staff of Anubis! The holy staff was held by a statue of the god, his jackal head leering and ominous. #{main} ran forward and pulled the staff out."
                tool = "Staff of Anubis"
                live = "The Mummy of Ramses came forward slowly. It lifted that horrible scepter into the air, but #{main} countered with a thrust of the scepter into the Mummy’s chest. #{main} couldn’t see the monster’s face, but they guessed it had a smile. #{main}’s last thought as the scepter flew down into their face was that even with a supernatural weapon, they were only… well, natural."
            elsif settings_type == "#/scifi" && live_type == "#/live" 
                place = "ancient spaceship’s armory" 
                monster = "intergalactic hunter"
                killing = "had blasted #{main}’s entire crew to death… everyone from the chef to the marines"
                old = "sewers"
                weapon = "spear" 
                explanation = "Most of the weapons in this wrecked spaceship were worthless, but #{main} spotted an intact suit of advanced armor. #{main} pulled the armor down—it was far too heavy for a human, but inside of it there was a surprise! #{main} pulled out a functioning plasma rifle!"
                tool = "plasma rifle"
                live = "The intergalactic hunter removed its armored mask, revealing a hideous face—it looked like the disfigured offspring of a bat and a scorpion. The hunter dove onto a column. It was so agile. The hunter smiled as it trained its shoulder blasters on #{main}. #{main} feigned fear… the monster loved that. It cackled as #{main} cried. Suddenly, #{main} lifted their plasma rifle and fired a shot. It struck the hunter in the chest. The monster went for its spear, but #{main} pulled the rifle up. \"You are one ugly mother…\" #{main} said as it pulled the trigger to end the hunter’s reign of terror."
            elsif settings_type == "#/scifi" && live_type == "#/die" 
                place = "ancient spaceship’s armory" 
                monster = "intergalactic hunter"
                killing = "had blasted #{main}’s entire crew to death… everyone from the chef to the marines"
                old = "sewers"
                weapon = "spear" 
                explanation = "Most of the weapons in this wrecked spaceship were worthless, but #{main} spotted an intact suit of advanced armor. #{main} pulled the armor down—it was far too heavy for a human, but inside of it there was a surprise! #{main} pulled out a functioning plasma rifle!"
                tool = "plasma rifle"
                live = "The intergalactic hunter raised their spear. #{main} knew this was their time to shine. They raised the gun up and the hunter showed fear for the first time. Suddenly, the hunter began to laugh. They clicked a button on their vest and became invisible. Not only was this demonic hunter far beyond anything human, but it also could cloak! At least #{main} never saw the spear coming."
            elsif settings_type == "#/college" && live_type == "#/live" 
                place = "frat house"
                monster = "killer zombie in a hockey mask"
                killing = "had slayed every member of five fraternities and sororities"
                old = "library"
                weapon = "machete" 
                explanation = "There on the mantle of the frat house’s fireplace was the fearsome zombie’s great-grandfather’s fraternity pin. The old man had told #{main} that you needed something linked to the monster’s bloodline in order to finally slay it."
                tool = "fraternity pin"
                live = "The killer zombie lurched at #{main} with its machete held high in the air. #{main} knew that it was now or never. #{main} danced closer at the masked slayer and dodged machete slashes like they were a younger Muhammad Ali. The beast cornered #{main} and managed to land a punch to #{main}’s ribs. #{main} slumped down and the monster went for the killing blow, but #{main} jabbed the pin through one of the decrepit eye slits of the hockey mask and into the monster’s head. It bellowed a deep cry of resigned doom and fell to its knees. It was weak… but not finished. #{main} grabbed the machete from the hockey mask killer’s rotted hand and beheaded it with one final stroke. #{main} had saved the college and the town… and they knew that the monster would never return, after all—it isn’t like these things ever come back again, and again, and again."
            elsif settings_type == "#/college" && live_type == "#/die" 
                place = "frat house"
                monster = "killer zombie in a hockey mask"
                killing = "had slayed every member of five fraternities and sororities"
                old = "library"
                weapon = "machete" 
                explanation = "There on the mantle of the frat house’s fireplace was the fearsome zombie’s great-grandfather’s fraternity pin. The old man had told #{main} that you needed something linked to the monster’s bloodline in order to finally slay it."
                tool = "fraternity pin"
                live = "The massive zombie stumbled towards #{main}. #{main} could feel its putrid breath seep out from under the hockey mask. #{mask} new it was now or never—they lunged forward and jabbed the pin into the beast’s chest. Tragically, a pin doesn’t go that deep… even if enchanted, it isn’t like it is going to really harm this hulk of a zombie killer. The killer laughed as it slammed that massive machete through #{main} over and over again… #{main}’s cries echoing throughout this town of the damned."
            elsif settings_type == "#/gothic" && live_type == "#/live" 
                place = "Palace of Westminster" 
                monster = "Jack the Ripper"
                killing = "had done such horrible things that even Queen Victoria, Empress of the realm that never sees night, herself felt unsafe" 
                old = "haunted pub"
                weapon = "dagger" 
                explanation = "#{main} ran through the House of Lords trying to find the weapon that the old man had told #{main} about. They could hear Jack the Ripper chasing after them, his fiendish cackling trailing at #{main}’s feet. #{main} found an ornate door, slipped inside, and slammed it shut. Jack the Ripper kept slamming his shoulder into the door—it wouldn’t hold forever. #{main} gasped when they realized they had found their weapon: there behind a glass panel was Excalibur… King Arthur’s legendary sword! #{main} shattered the glass with a chair and retrieved the sword just in time."
                tool = "Excalibur"
                live = "Jack the Ripper slid in with a hideous laugh. He wrapped his cloak around himself and advanced on #{main}. He uttered, “One more notch for the old blade.” He raised his dagger high in the air. Suddenly, #{main} froze. #{main} received visions from a past laugh where they were a knight in the employ of King Richard the Lionhearted. Automatically, #{main} made a slash with Excalibur and felled Jack the Ripper. His famous dagger fluttered to the floor. He was barely alive. #{main} lifted the cloak to see that the famous killer was the old man from the pub! “Thank you for stopping me.” He seemed so polite. “I was possessed by a terrible spirit and I knew that only you, #{main} could release me.” Just then the guards rushed in and saw what had happened. #{main} became a hero and was knighted and thanked by Victoria herself!"
            elsif settings_type == "#/gothic" && live_type == "#/die" 
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
        
        
        elsif options_type == "#/monster"
            if settings_type == "#/mythology" && live_type == "#/live" 
                main = main
                place = "Valhalla"
                monster = "the Midgard Serpent"
                city = "Asgard"
                exposition = "You were a great warrior on Earth: a fierce, brave, and proud Viking. Upon your death, #{main}, the Valkyries swept you up to be part of Odin’s fighting force against evil. You figured that time would be Ragnarök, but through some foul witchcraft, the huge monster Jormungand—the Midgard Serpent—was released in the streets of Asgard! Now it is sliding around the city, eating everything that it can.. even gods! Who can deal with a monster that stretches around the entire Earth and can fit its tail in its mouth?"
                helper = "Vidar"
                helperplace = "pub"
                snack = "Idunn’s golden apples"
                tank = "magic shoe"
                helperexpo = "Vidar came with his gigantic magic shoe. Whenever a Norse cobbler makes a shoe, they leave a piece of leather for him. Vidar collects those pieces in order to make a war shoe that he can use to avenge his father, Odin. This majestic shoe could also fly, since it was made by the dwarves, and they specialize in creating flying things. The Midgard Serpent was cornering a family of lesser gods, so Vidar and #{main} had to act quickly."
                live = "Vidar and #{main} flew the huge flying boot into the Midgard Serpent’s head right as it was about to devour the family. It reared back in pain. #{main} remarked they were like Mother Goose and her shoe, but Vidar didn’t get the reference. They flew around and around the serpent, striking it whenever they could. However, they couldn’t finish it… until a hammer soared through the air and struck the monster down. They distracted it long enough for Thor to return home and save the day. Because he always does."
                
            elsif settings_type == "#/mythology" && live_type == "#/die" 
                main = main
                place = "Valhalla"
                monster = "the Midgard Serpent"
                city = "Asgard"
                exposition = "You were a great warrior on Earth: a fierce, brave, and proud Viking. Upon your death, #{main}, the Valkyries swept you up to be part of Odin’s fighting force against evil. You figured that time would be Ragnarök, but through some foul witchcraft, the huge monster Jormungand—the Midgard Serpent—was released in the streets of Asgard! Now it is sliding around the city, eating everything that it can.. even gods! Who can deal with a monster that stretches around the entire Earth and can fit its tail in its mouth?"
                helper = "Vidar"
                helperplace = "pub"
                snack = "Idunn’s golden apples"
                tank = "magic shoe"
                helperexpo = "Vidar came with his gigantic magic shoe. Whenever a Norse cobbler makes a shoe, they leave a piece of leather for him. Vidar collects those pieces in order to make a war shoe that he can use to avenge his father, Odin. This majestic shoe could also fly, since it was made by the dwarves, and they specialize in creating flying things. The Midgard Serpent was cornering a family of lesser gods, so Vidar and #{main} had to act quickly."
                live = "The shoe hurtled into the Midgard Serpent’s face. Vidar and #{main} cheered as it flew back, crushing several homes and restaurants as it sprawled out like a great river. The beast rolled over injured. The battle seemed to be a draw until a giant bird swooped in and grabbed the flying shoe. ”Stop attacking my son!” it shouted. The bird dropped the shoe and then shape changed into Loki. #{main} questioned Loki about how Jormungand was his son. Loki replied, ”I’m his mother after all.” Loki started to explain the tale of how he shape shifted into a beautiful horse and then led a giant’s massive horse away before a construction project and how that led to him pregnant with monsters, but the story lasted too long—Vidar and #{main} were interested, but then with a thud the Midgard Serpent rejuvenated itself and spit a stream of disgusting venom into the shoe, slaying both our heroes."
               
            elsif settings_type == "#/scifi" && live_type == "#/live" 
                main = main
                place = "the Mars Colony"
                monster = "the giant blob"
                city = "Muskville"
                exposition = "The industrialist that the city was named for, Elon Musk, still lived in the year 2235. He was just a head in a jar attached to a cyborg. He funded a project on his Mars city to open a warp hole. It worked! Sadly, the giant blob came out, and as is wont for a blob… it started destroying everything."
                helper = "Elon Musk"
                helperplace = "Tesla factory"
                snack = "candy corn"
                tank = "magic shoe"
                helperexpo = "The huge Space X battleship swooped down. #{main} was amazed. Musk called to them, ”I’m flying the thing with my brain! Get on!” #{main} jumped in the shining ship, adorned with the best technology and posters of the latest memes. The Space X battleship soared at the blob and readied its cannons."
                live = "The blob shoot goo at the battleship. Musk smiled and winked. With a command from his brain, shields shot up around the ship. The goo shattered them. Under his breath, he said ”Just like that incident with the truck window.” The blob expanded to be a massive monster. It was the size of a football stadium. Nothing that Musk and #{main} tried seemed to work. All of the Space X battleship’s weapons were useless. Then #{main} had an idea. They asked Musk to play Grimes’s best song. Elon rolled his eyes but went along with it. The blob liked the Pitchforkmedia approved beat. It ambled after the craft, and Musk was able to lure it off a cliff to its doom. Never doubt the power of indie pop!"
            elsif settings_type == "#/scifi" && live_type == "#/die" 
                main = main
                place = "the Mars Colony"
                monster = "the giant blob"
                city = "Muskville"
                exposition = "The industrialist that the city was named for, Elon Musk, still lived in the year 2235. He was just a head in a jar attached to a cyborg. He funded a project on his Mars city to open a warp hole. It worked! Sadly, the giant blob came out, and as is wont for a blob… it started destroying everything."
                helper = "Elon Musk"
                helperplace = "Tesla factory"
                snack = "candy corn"
                tank = "magic shoe"
                helperexpo = "The huge Space X battleship swooped down. #{main} was amazed. Musk called to them, ”I’m flying the thing with my brain! Get on!” #{main} jumped in the shining ship, adorned with the best technology and posters of the latest memes. The Space X battleship soared at the blob and readied its cannons."
                live = "The Space X battleship blasted the blob with its laser cannon. The blob shrunk away. Then it… spoke! ”Elon… I know of you, come with me through the rift. On our planet we all love you and know that you are the best man ever.” #{main} warned him not to, but Elon smiled and flew after the blob through the void. To be fair, #{main} was lonely without humans (except for Musk, but the attention got to his head), but blob universe wasn’t bad! #{main} lived a great life there for years. Until a juvenile blob didn’t see them and accidently scooted over them, suffocating #{main} to death. The rest wasn’t bad though!"
            elsif settings_type == "#/college" && live_type == "#/live" 
                main = main
                place = "the college library"
                monster = "the giant fly man"
                city = "Boston"
                exposition = "The brilliant MIT scientist, Dr. Glass, had developed what he thought was a cure for missing limbs based on splicing fly DNA with our own DNA. He was missing a leg from a tragic accident playing hockey as a child. Glass, too hasty and too sure he was correct, tested the formula on himself… right as his colleague, Dr. Mishima was doing an experiment on gamma rays in the next lab over. Her clumsy student aid knocked into a switch and accidently amplified the rays a thousand-fold. The combination of the rays and Glass’s flawed formula turned Glass into a hideous 20 story tall fly man!"
                helper = "Dr. Mishima"
                helperplace = "lab"
                snack = "popcorn"
                tank = "experimental helicopter"
                helperexpo = "Dr. Mishima wiped the hair out of her eyes. “I helped a mechanical engineering get the radioactive power coupler working in this bad boy. With its chain gun we should be able to help finish off poor Dr. Glass.”"
                live = "The copter flew at the monster. Dr. Mishima swerved around its awkward lunges. #{main} took the gun and fired a volley at the giant fly man. It bellowed a horrible cry and flew after the duo. Dr. Mishima lured the monster through downtown Boston until it suddenly stopped with a sickening thud. #{main} asked what had happened. Mishima patted her sweaty brow, “I helped the military come up with a quick solution. Giant fly-paper I made in my lab.”"
            elsif settings_type == "#/college" && live_type == "#/die" 
                main = main
                place = "the college library"
                monster = "the giant fly man"
                city = "Boston"
                exposition = "The brilliant MIT scientist, Dr. Glass, had developed what he thought was a cure for missing limbs based on splicing fly DNA with our own DNA. He was missing a leg from a tragic accident playing hockey as a child. Glass, too hasty and too sure he was correct, tested the formula on himself… right as his colleague, Dr. Mishima was doing an experiment on gamma rays in the next lab over. Her clumsy student aid knocked into a switch and accidently amplified the rays a thousand-fold. The combination of the rays and Glass’s flawed formula turned Glass into a hideous 20 story tall fly man!"
                helper = "Dr. Mishima"
                helperplace = "lab"
                snack = "popcorn"
                tank = "experimental helicopter"
                helperexpo = "Dr. Mishima wiped the hair out of her eyes. “I helped a mechanical engineering get the radioactive power coupler working in this bad boy. With its chain gun we should be able to help finish off poor Dr. Glass.”"
                live = "The helicopter flew all around the massive fly beast, peppering it with bullets. The monster cried out in pain. #{main} thought they had won the day… until the creature’s eyes started to glow. It blasted out a burst of energy that ended up turning the copter, and the whole block, into molten ash. At least it was a painless way to go for Dr. Mishima and #{main}."
            elsif settings_type == "#/gothic" && live_type == "#/live" 
                main = main
                place = "the castle"
                monster = "the titanic vampire"
                city = "Alucardville"
                exposition = "The heroic vampire hunter, Gestalt Van Helsing, had fought the forces of evil his whole life. That is, until he slayed an especially powerful vampire, Nosferatu. The hideous fiend sunk his teeth into Gestalt’s neck as he died… turning the once great hero into the largest vampire that had ever been seen."
                helper = "Gestalt Van Helsing Jr."
                helperplace = "church"
                snack = "Szarlotka"
                tank = "chariot"
                helperexpo = "Van Helsing Jr. prayed that this would work. ”I’ll have you know #{main}, that I have loaded this chariot with holy water that has been blessed by the local rabbi, imam, and leaders of all churches. Along with some witches as well. I hope to drive it into my poor father and see what occurs.” The horses whinnied as the chariot flew at the 40 foot tall vampire."
                live = "The vampire was busy devouring some of Alucardville’s finest soldiers—it didn’t notice the huge chariot flying at it. The chariot slammed into the demonic dervish of destruction and shattered. The vampire screamed as the holy water seared into its skin. The monster burst into flames and slumped down. ”We’ve done it!” shouted Van Helsing Jr. The sun finally peaked through the clouds as the threat had ended."
            elsif settings_type == "#/gothic" && live_type == "#/die"
                
                main = main
                place = "the castle"
                monster = "the titanic vampire"
                city = "Alucardville"
                exposition = "The heroic vampire hunter, Gestalt Van Helsing, had fought the forces of evil his whole life. That is, until he slayed an especially powerful vampire, Nosferatu. The hideous fiend sunk his teeth into Gestalt’s neck as he died… turning the once great hero into the largest vampire that had ever been seen."
                helper = "Gestalt Van Helsing Jr."
                helperplace = "church"
                snack = "Szarlotka"
                tank = "chariot"
                helperexpo = "Van Helsing Jr. prayed that this would work. ”I’ll have you know #{main}, that I have loaded this chariot with holy water that has been blessed by the local rabbi, imam, and leaders of all churches. Along with some witches as well. I hope to drive it into my poor father and see what occurs.” The horses whinnied as the chariot flew at the 40 foot tall vampire."
                live = "#{main} covered their eyes as the chariot slammed into the titanic vampire. It kept its balance. A drop of holy water landed on the huge hand. It grunted in pain. Van Helsing’s hideous eyes turned yellow, and his fangs glistened. The brute grabbed the chariot, and with all his supernatural might, he threw it as far as he could. It soared past the pier and landed in the ocean with a thud. Luckily for #{main}, the fall did not kill them. Unluckily for #{main}, the sharks did."
            end
            puts "#{main} gasped as #{place} fell to pieces around them. The horrible #{monster} was destroying everything in #{city}. #{monster} towered over everything in sight. Why was this happening to #{main}’s home? The #{monster}’s giant foot smashed the restaurant where #{main} had their first kiss. #{main} was furious, but they thought back to how this all started.
    
            #{exposition} Now there was no time to lose. #{main} had to win the day! They were lucky that they had met #{helper} and helped them out of the rubble of their #{helperplace}. The #{monster} picked up some fleeing citizens and popped them into its hideous maw like you or I would eat #{snack}. #{monster} picked up a home and hurled it over the horizon. It stomped towards #{main}. #{main} knew they were done for… but then #{helper} arrived in their #{tank}!
        
            “Get in!” shouted #{helper}. #{helperexpo}  #{main} climbed into the #{tank}. They sped at the horrific #{monster}. #{helper} whispered, “I hope this works.” #{main} nodded along. 
            
            #{live}"
        elsif options_type == "#/child"
            if settings_type == "#/mythology" && live_type == "#/live" 
                main = main
                evilchild = "baby dragon"
                parents = "that couple down the street that always was cursing Zeus"
                exposition = "#{main} quickly figured out that those parents had been cursed by the gods to raise a terrible monster, the likes of which hadn’t been seen since Hercules walked these lands."
                tool = "sword with a lead hilt"
                live = "#{main} held the sword close. The dragon screeched and reared up. It dodged some sword thrusts, but #{main} knew what to do when it tried to counterattack with a flame burst. #{main} twisted the hilt off and threw it down the monster’s gullet. The lead melted in the hot flames and oozed down into the creature’s belly, killing it."
    
                
            elsif settings_type == "#/mythology" && live_type == "#/die" 
                main = main
                evilchild = "baby dragon"
                parents = "that couple down the street that always was cursing Zeus"
                exposition = "#{main} quickly figured out that those parents had been cursed by the gods to raise a terrible monster, the likes of which hadn’t been seen since Hercules walked these lands."
                tool = "sword with a lead hilt"
                live = "#{main} tried to fight the monster. However, #{main} isn’t descended from a god. This is tricky stuff. They didn’t realize the hilt was the weapon, not the sword. All problems they would be able to focus on once they crossed the river with Charon to go to the land of Hades."
               
            elsif settings_type == "#/scifi" && live_type == "#/live" 
               
                main = main
                evilchild = "Xenomorph"
                parents = "the CEO and CFO of that weird space exploration business"
                exposition = "#{main} quickly figured out that those damned parents had brought back a bioweapon from space and that they were being called to watch it in order to see how formidable the monster was!"
                tool = "flamethrower"
                live = "#{main} wielded the flamethrower close to their body. The xenomorph charged in. #{main} pressed the trigger down and the metallic creature melted into a disgusting little puddle on the ground. From now on never babysitting. Never again."
    
            elsif settings_type == "#/scifi" && live_type == "#/die" 
                main = main
                evilchild = "Xenomorph"
                parents = "the CEO and CFO of that weird space exploration business"
                exposition = "#{main} quickly figured out that those damned parents had brought back a bioweapon from space and that they were being called to watch it in order to see how formidable the monster was!"
                tool = "flamethrower"
                live = "#{main} sent a stream of flame at the Xenomorph. It cackled and felt nothing. The little imp raised its claws and dove on #{main}. From another room, the CEO and CFO watched over camera. They marked off fire as another weapon that the monster was immune to."
            elsif settings_type == "#/college" && live_type == "#/live" 
                main = main
                evilchild = "evil twisted doll"
                parents = "that odd sorority girl with parents that are archeologists"
                exposition = "#{main} realized too late that the girl's parents had brought her back a possessed doll. The doll was made by Rasputin, the mad monk himself! It thirsted only for blood... and it had brought the girl under its spell."
                tool = "cross"
                live = "#{main} picked the Bible. When the monster came in, they tackled it, but the doll had supernatural strength. It threw #{main} off, but #{main} smashed the cross into the monster’s head. It fell back and crumbled down. #{main} had seen this in so many movies that it almost felt cliched, but they were glad that the old classic weapons against evil work."
            elsif settings_type == "#/college" && live_type == "#/die" 
                main = main
                evilchild = "evil twisted doll"
                parents = "that odd sorority girl with parents that are archeologists"
                exposition = "#{main} realized too late that the girl's parents had brought her back a possessed doll. The doll was made by Rasputin, the mad monk himself! It thirsted only for blood... and it had brought the girl under its spell."
                tool = "cross"
                live = "#{main} slammed the cross into the doll. Nothing happened. #{main} remarked, “=”I thought this was supposed to kill you?” The doll said it was an evil possessed doll, but it was an atheist evil possessed doll and there was a scientific reason it existed… so such things don’t work on it. #{main} realized just then as the doll’s sharpened fingernails extended six inches out that they were in serious trouble…"
            elsif settings_type == "#/gothic" && live_type == "#/live" 
                main = main
                evilchild = "Frankenstein’s monster"
                parents = "that weird doctor guy down the street who’s always talking about dead stuff"
                exposition = "#{main} quickly figured out that this doctor was testing his monstrous son to see how it would deal with a human."
                tool = "pitchfork"
                live = "#{main} picked the pitchfork up and jabbed it at the monster. They fought out of the closet and across the home. Frankenstein’s monster had the upper hand until #{main} dipped the pitchfork in the fire and jabbed it in the beast’s face. Out of fear, it dove off the balcony and crashed down with a thud, dead. That weird doctor guy returned and cradled his son while sobbing. #{main} retired from their babysitting career that day."
            elsif settings_type == "#/gothic" && live_type == "#/die"
                main = main
                evilchild = "Frankenstein’s monster"
                parents = "that weird doctor guy down the street who’s always talking about dead stuff"
                exposition = "#{main} quickly figured out that this doctor was testing his monstrous son to see how it would deal with a human."
                tool = "pitchfork"
                live = "As strong as #{main} is, they are only human. The monster is a hulking brute. No matter how hard they fought, #{main} couldn’t ward off the heavy blows from that awful green monster forever. Little did they know, that doctor had plans for a new undead kid… when they got home, the experiments on #{main} began."
            end
            puts "#{main} slumped into the dark corner. They never thought that this babysitting assignment would turn out to be this horrible! When they agreed to watch #{evilchild} for #{parents} they assumed this would be easy. #{evilchild} was supposed to be in their room asleep. However, once they went into #{evilchild}’s room and found the hideous display of corpses, #{main} knew that it wouldn’t be a walk in the park. #{exposition} #{main} felt all the wounds that they now had all over their body. That little monster had chased them all over the house and attacked them. #{main} was hiding and whimpering in a closet. They could hear #{evilchild} scurrying outside, its hideous laughter piercing the air. As main’s eyes got used to the darkness, they noticed a #{tool} in the corner. They clutched it close as #{evilchild} burst in.
    
            #{live}"
        
        end
    
    end
   
end
