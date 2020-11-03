# 6.1 Introduction  
TODO: Maddie  

## 6.1.1 System Objectives  

The objective of this application is to provide fun and exciting turn-based gameplay to users of all experience levels. The application integrates new and unexpected twists into the gameplays of Settlers of Catan and K'tah so that fans of these games will recognize certain familiar elements but still find the game to be exciting. The multi-player element of the application allows users to socially engage with other players by playing the game together. In addition, the clean and eye-catching graphic elements of the application allows users to experience high-quality gameplay. The various paths to victory in the game also provides freedom for the users to be creative and employ different gameplay strategies.

## 6.1.2 Hardware, Software, and Human Interfaces  
TODO: Maddie  

# 6.2 Architectural Design  

- Gameflow Control   
    - Game phases: Initial placement phase, turns phase, end phase
    - Turn-based gameplay logic
    - Mini-game (triggered by certain events)
- User Interface / Player Control
    - Title screen interactions
    - Multi-player interactions, e.g. trading
    - Building (castles, outposts, roads, etc.) purchases and placements
- Gameplay Logic
    - Resource generation and collection
    - Building restrictions, e.g. outposts locations
    - Victory progress

## 6.2.1 Major Software Components  
TODO: Maddie  

## 6.2.2 Major Software Interactions  

- The gameflow control determines phases of gameplay and triggers player control at different parts of the game. For example, in the initial placement phase, the gameflow control will begin by retrieving player at index 0 and triggering the player to place their castle and outpost. Then, it retrieves the next player's index and triggers that player's placement phase. Once the placement phase is completed, the gameflow control advances to the turns phase, and controls the turn-based gameplay by cycling through the players and subsequently triggering their actions.
- The game logic receives information from the player control and determines whether the player's actions are valid at that point in the game. When a player performs an action, the action triggers the processing of game logic, which results in either the action being successfully, or unsuccessfully, performed. For example, if a player attempts to purchase a building with insufficient resources, the game will retrieve the player's list of resources and check the amount of existing resources before completing the action. Another example of this interaction is that resource collection for each player will only happen if they have outposts on the correct resource tiles. In addition, the game logic also relays information to player control, for example, when the player is placing buildings, the game logic processes the action and highlights the locations where such placement is valid.
- The gameplay logic triggers changes in gameflow control; for example, the gameplay logic determines the victory progress of each player, and if a player has sufficient means to claim victory, this information is passed to gameflow control through a trigger in the GameMode to advance the gameplay to the end phase.

## 6.2.3 Architectural Design Diagrams  
TODO: Maddie  