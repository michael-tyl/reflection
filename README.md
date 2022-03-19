## Live on https://reflectiongame.github.io
## Inspiration
Puzzle games are one of my favorite genres, and the specific idea to have bouncing light is from a board game which I saw a long time ago, where there is a piece that shoots lasers which bounce around, and mirrors are used to reflect the laser. After thinking about ideas for a while, I thought that it would be very cool to implement light and reflections into a puzzle game. Also, the nexus texture is inspired from Starcraft.
## What it does
Reflection is a puzzle game where you choose to fire light from specific pieces in specific orders in order to get a light beam into the nexus. The light beams bounce around mirrors, and they can be used to destroy obstacles. There are 10 levels to complete which ramp up in difficulty.
## How I built it
Reflection is built in Godot, an open-source game engine. It uses Godot's Python-like programming language, GDscript. Levels were designed through the help of Microsoft Excel.
## Challenges I ran into
Working with new platforms obviously presents many challenges to work through, all of which I was eventually able to solve. A couple of the larger ones I ran into were that I couldn't figure out how to import custom fonts, which I eventually solved with a lot of Googling, and that I couldn't figure out why changes to the win screen function weren't working, when I realized that I was changing the lose screen function!
## Accomplishments that I'm proud of
Overall, I am very proud of everything I have done with my project, but I am specifically proud of the way in which I implemented new levels. Following object-oriented programming principles, it is very easy for me to create new levels through inheriting from a main level class, or essentially reusing large chunks of code. All the pieces are implemented in other classes, and I only need to specify where to place them for each new level class. I am also proud of the level design. I like the way the difficulty increases and feel that they present a decent challenge.
## What I learned
This was the first time I've ever used GDscript, and I learned a lot about navigating through Godot to create a larger project than most which I have completed before. Many aspects of GDscript are different than previous programming languages I have used (overloaded functions are not in GDscript, which left me scratching my head for a bit as I couldn't figure out why there was an error!). I now feel much more familiar with GDscript, the Godot engine, and how they connect, and I am sure that I have the ability to create more complex projects with my new skills. Additionally, I have learned a lot about skills not directly related to programming, primarily graphics and level-design. I drew all textures and background images in paint.net, which is another tool which I had to learn to wield effectively. For level-design, I had to get creative and think about what challenges I would like to see in a level. I realized that it's best to show level features slowly and build upon them level by level. Ultimately, creating this has been a huge learning experience which I am immensely greatful for. Thank you to the Triton Hacks team for putting together such a great event!
## What's next for Reflection
I would like to add sound effects and better graphics to Reflection. Particles for events such as light bouncing off mirrors, destroying rocks, or making it into a nexus would also be cool! Obviously, new levels will be made as well. Maybe even new pieces will be added! I would also like to create a custom level creator.
## Font credits
Montserrat font by: Julieta Ulanovsky, Sol Matas, Juan Pablo del Peral, Jacques Le Bailly 
Dancing-Script font by: Pablo Impallari 
## Extra notes
The GitHub pages website (somebodynotanonymous.github.io) is configured to run the game using Godot's HTML5 export feature. The MediaFire link contains compiled binaries for Windows, Mac, and Linux.
