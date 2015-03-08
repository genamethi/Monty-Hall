# Monty-Hall

What? Classic probability problem written in the Lua programming language.

Why? Mostly to help visualize how simple the counterinutitive aspect of the problem is when written out. Lua syntax makes for reading it in a very plain English manner.

How? Build a table with n game sets. Each set is three doors. One randomly has a car put behind it in each set (the rest have goats by default). The current game function goes through all the game sets with the same choices (initial door and whether to switch) for all the game sets. If the game was one it adds a counter and is divided by the number of games.

More How? This part requires a bit of understanding of the problem, but I will take a shot, in brief, to explain my approach. So, we have three doors, one has a goat behind it. The function is omniscient so if you picked the right door the first time and aren't deciding to switch doors then you automatically win. But this will only happen 1 in 3 times (this seems to most intuitive part). In the converse if you won on the first pick (1/3) and decide to change then you lose, so 1/3 times when you switch you lose. And of course there is picking the wrong door. If you pick the wrong door (2/3) and stay you lose automatically. The converse of this is that with switching and picking the wrong door you win. That's the complement to 1/3, so it makes sense.
