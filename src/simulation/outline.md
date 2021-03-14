- Bugs to look at / Things to do:
    - Player spread leads to zombie battle? -> Maddie
    - Zombies can only attack one person per natural spread -> Maddie
    - Remove player from game if they lose both castles -> Merissa
    - Add class/functions to constants.py to allow for constants to be set -> Merissa

- look into:
    - should military and research points be combined?
    - apothecaries no longer collect resources?
    - the more resources player have, the more zombies spawn?

1. get reasonable results
2. find what we want to minimize/maximize - probably even chance of research/defense
3. compare difference between our distribution and an ideal distribution of win type percentages
4. ^^^ leads to loss function
5. look separately @ if other players did well / did horribly

Questions/Notes:
- Should player trade be a thing? Or just bank trade?
- Should we find a way to trade if only one resource away from most wanted build?

Components needed for simulation:
- Player
    - Resources
    - Victory Path Points
        - Defense Points
        - Research Points
    - Num knights
        - Attack when horde distance is low and there's a likelihood of winning
    - Different strategy types
        - Militaristic - Build knights, outposts/roads, attacks whenever possible
        - Research - Build outposts, barricades, knights, attacks when horde distance is 1
        - Lone Survivor - Build barricades, outposts, knights, only attacks to liberate castles
        - General - Build order is random, attack somewhat randomly
- Board
    - Buildings
        - Each building has player owner
        - Outpost class
        - Castle class
        - Roads
        - Barricades
            - Barricade lowers likelihood of zombie attack upon spread
            (EDIT: Changed to lowering likelihood of bringing zombies closer to player)
- Horde class
    - Size
        - As increases, horde distance for player castles has chance of decreasing
        - Spread each round
    - Player spread with spinner roll
    - Player can attack when horde distance for a castle is <= 2
- General simulation (Both)
    - Extra file to run sim.py multiple times and export to CVS/TXT file
    - Parts of a turn:
        - Resource roll
        - Possible zombie spread
        - Build, based on strategy outlined above
        - Maybe attack, based on strategy outlined above
    - Between rounds
        - Check for lone survivor
        - Update barricades
    - Victory paths
        - Military victory
        - Research victory
        - Lone Survivor