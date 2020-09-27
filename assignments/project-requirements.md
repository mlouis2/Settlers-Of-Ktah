# 5.0 Requirements Specification

## 5.1 Introduction
### 5.1.1 Description
This Software Requirements Specification document details the requirements for "Settlers of K'tah", a multi-player 3D board game that will be created using Unreal Engine. Players will take turns performing strategic actions such as building various types of structures, fighting off the enemy zombie horde, and trading with other players in the game. There will be a title screen where players can select various settings, the main game scene, as well as a mini-game that occurs when there is a battle between a player and the zombie horde. The game will be created using the Unreal Engine blueprint system as well as C++.

### 5.1.2 Diagram
![alt text](./images/big-picture-diagram.png "Diagram of the main components of Settlers of K'tah.")

## 5.2 CSCI Component Breakdown
### 5.2.1 In-Game Components
#### 5.2.1.1 Title Screen
Has three components: a character customization option, a general game settings option, and the join game button.
##### 5.2.1.1.1 Character Customization
Allows players to customize their characters' appearances.
The title screen shall allow players to customize their characters' appearances.
##### 5.2.1.1.2 Game Settings Menu
Brings up a modal view that presents several different game options.
##### 5.2.1.1.3 Rule Book Menu
Brings up a modal view that presents the game rules.
##### 5.2.1.1.4 Join Game Button
Allows player to connect to the game in order to play.

#### 5.2.1.2 Main Game Scene
The main game scene comprises the actual gameplay and interactions between players and assets.
##### 5.2.1.2.1 Main Game Menus
The main game menus specify different ways that players can advance in the game during their turns.
###### 5.2.1.2.1.1 Build Menu
Allows players to build a variety of different structures and resources.
###### 5.2.1.2.1.2 Attack Menu
Allows players to attack the zombie horde when it is on other tiles.
###### 5.2.1.2.1.3 Trade Menu
Allows players to interact with each other through trade.
##### 5.2.1.2.2 Main Game Statuses
The main game statuses provide players with important information on their status in the game.
##### 5.2.1.2.2.1 Knight Indicator
Knight indicator displays how many knights a player has.
##### 5.2.1.2.2.2 Research Point Indicator
Research point indicator displays how many research points a player has.

##### 5.2.1.2.3 Main Game Board
The main game board will show all of the gameplay, and will be interactive during a player's turn.
###### 5.2.1.2.3.1 Dice
The dice will have several different sides, and is rolled once per player per turn.
###### 5.2.1.2.3.2 Tiles
The game board is made up of different types of tiles, some indicating resources and some indicated that they have been infected by the zombie horde.
###### 5.2.1.2.3.2.1 Tile Space
The tile space can hold cities or the zombie horde.
###### 5.2.1.2.3.2.2 Tile Vertices
Tile vertices can hold outposts or apothecaries.
###### 5.2.1.2.3.2.2 Tile Edges
Tile edges can hold roads.

#### 5.2.1.2 Zombie Encounter Mini-game Scene
The zombie encounter mini-game occurs when a player is fighting off the zombie horde.

### 5.2.2 AWS Server
The AWS server will allow for the multi-player aspect of the game.

## 5.3 Functional Requirements by CSC
Remove this line!! But more details go here about all of the different components outlined in 5.2, and what exactly they'll do. Use "shall" statements.
### 5.3.1->n Functional Requirements

## 5.4 Performance Requirements by CSC
### 5.4.1 Runtime & Speed
The game's animations shall run at no lower than 20 FPS. Since it is a turn-based game, delays between player interactions shall be no less than ten seconds, and in the case of a delay longer than three seconds there shall be a waiting indicator.
### 5.4.2 Controls
All controls shall be responsive to the player, and clearly marked as inactive if they are not meant to be used at certain times within the gameplay.
### 5.4.3 Accessibility & Usability
The game shall be accessible in terms of font-size, colors, and clear language. Additionally, the game shall be tested to avoid as many crash situations as possible, but if the game should crash, it shall present a clear and coherent error message to the player.

## 5.5 Project Environment Requirements
### 5.5.1 Development Environment Requirements
### 5.5.2 Execution Environment Requirements
