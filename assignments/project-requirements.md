# 5.0 Requirements Specification

## 5.1 Introduction

TODO: Maddie

### 5.1.1 Description

This Software Requirements Specification document details the requirements for "Settlers of K'tah", a multi-player 3D board game that will be created using Unreal Engine. Players will take turns performing strategic actions such as building various types of structures, fighting off the enemy zombie horde, and trading with other players in the game. There will be a title screen where players can select various settings, the main game scene, as well as a mini-game that occurs when there is a battle between a player and the zombie horde. The game will be created using the Unreal Engine blueprint system as well as C++.

### 5.1.2 Diagram

![alt text](./images/big-picture-diagram.png "Diagram of the main components of Settlers of K'tah.")

## 5.2 CSCI Component Breakdown

### 5.2.1 In-Game Components

#### 5.2.1.1 Title Screen - has four components: a character customization option, a general game settings option, a rule book option and the join game button.

&nbsp;&nbsp;5.2.1.1.1 Character Customization - allows players to customize their characters' appearances.

&nbsp;&nbsp;5.2.1.1.2 Game Settings Menu - brings up a modal view that presents several different game options.

&nbsp;&nbsp;5.2.1.1.3 Rule Book Menu - brings up a modal view that presents the game rules.

&nbsp;&nbsp;5.2.1.1.4 Join Game Button - allows player to connect to the game in order to play.

#### 5.2.1.2 Main Game Scene - comprises the actual gameplay and interactions between players and assets.

&nbsp;&nbsp;5.2.1.2.1 Main Game Menus - specifies different ways that players can advance in the game during their turns.

&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.1.1 Build Menu - allows players to build a variety of different structures and resources.

&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.1.2 Attack Menu - allows players to initiate an attack.

&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.1.3 Trade Menu - allows players to interact with each other through trade.

&nbsp;&nbsp;5.2.1.2.2 Main Game Statuses - provides players with important information on their status in the game.

&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.2.1 Knight Indicator  
&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.2.2 Research Point Indicator  

&nbsp;&nbsp;5.2.1.2.3 Main Game Board - shows all of the gameplay, and will be interactive during a player's turn.

&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.3.1 Die - is rolled once at each player's turn.  
&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.3.2 Tiles - indicate resources or presence/infection of zombies.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.3.2.1 Tile Space  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.3.2.2 Tile Vertices  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.2.1.2.3.2.2 Tile Edges  

#### 5.2.1.2 Zombie Encounter Mini-game Scene - occurs when a player is fighting off the zombie horde.

### 5.2.2 AWS Server - allows for the multi-player aspect of the game.

## 5.3 Functional Requirements by CSC

### 5.3.1 In-Game Components

#### 5.3.1.1 Title Screen

The title screen shall display a window for character customization, a button that will bring up the game settings menu, a button that will bring up the rule book menu, and a button to join a game.

&nbsp;&nbsp;5.3.1.1.1 The Character Customization window shall allow the player to change the appearance of the player's in-game character. These changes will include, but are not limited to:
* Skin color
* Clothing color
* Character accessories

&nbsp;&nbsp;5.3.1.1.2 The Game Settings menu shall allow the player to change the application settings, that include, but are not limited to:
* Sound effects volume
* Background music volume

&nbsp;&nbsp;5.3.1.1.3 The Rule Book menu shall display a window to provide details of gameplay mechanics, including the different ways to win the game.

&nbsp;&nbsp;5.3.1.1.4 The Join Game button shall allow the player to join any existing game, or create a new one.

#### 5.3.1.2 Main Game Scene

The main game screen shall display all relevant information for the gameplay and provide the player access to actionable menus.

&nbsp;&nbsp;5.3.1.2.1 The top level main game menus shall allow the player to access the submenus during their turn.

&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.1.1 The Build menu shall allow the player to use their resources to build and acquire any of the following:
* Outposts
* Apothecaries
* Knights
* Roads

&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.1.2 The Attack menu shall allow the player to attack the zombie horde when the horde is on a  tile that is adjacent to any of the player's buildings.

&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.1.3 The Trade menu shall allow the player to initiate trade with other players by offering up any amount of their own resources in exchange for any amount of resource that they want.

&nbsp;&nbsp;5.3.1.2.2 The main game statuses shall allow the player to clearly identify the status of different indicators throughout the game.

&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.2.1 The Knight Indicator shall display the number of knights a player currently has.

&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.2.2 The Research Point Indicator shall display the number of research points a player currently has.

&nbsp;&nbsp;5.3.1.2.3 The main game board shall display the entire game board during the course of the gameplay.

&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.3.1 The die shall have six different faces:
* Wood
* Wheat
* Steel
* Brick
* Zombie
* Research

&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.3.2 The tile shall allow players to access its three subcomponents.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.3.2.1 The tile space shall provide a space onto which the player may place cities or move the zombie horde.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.3.2.2 The tile vertices shall provide spaces for the player to build outposts or apothecaries.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.3.1.2.3.2.2 The tile edges shall provide spaces for the player to build roads to connect their buildings.

#### 5.3.1.2 Zombie Encounter Mini-game Scene

The zombie encounter mini-game scene shall allow the player to engage in an attack in order to defeat the zombie horde. The outcome of the mini-game will determine whether the player has successfully defeated the zombies.

### 5.3.2 AWS Server

The AWS Server shall allow the player to engage in multi-player gameplay with other players.

## 5.4 Performance Requirements by CSC

### 5.4.1 Runtime & Speed

The game's animations shall run at no lower than 20 FPS. Since it is a turn-based game, delays between player interactions that involve responses to/from the server shall be no less than ten seconds, and in the case of a delay longer than three seconds there shall be a waiting indicator.

### 5.4.2 Controls

All controls shall be responsive to the player, and clearly marked as inactive if they are not meant to be used at certain times within the gameplay.

### 5.4.3 Accessibility & Usability

The game shall be accessible in terms of font-size, colors, and clear language. Additionally, the game shall be tested to avoid as many crash situations as possible, but if the game should crash, it shall present a clear and coherent error message to the player.

## 5.5 Project Environment Requirements

### 5.5.1 Hardware Requirements

Following are the hardware requirements for Settlers of K'tah:

| Category                   | Requirement                                       |
|----------------------------|---------------------------------------------------|
| Operating System           | Windows 10 64-bit                                 |
| Processor                  | Quad-core Intel or AMD, 2.5 GHz or faster         |
| Memory                     | 8 GB RAM                                          |
| Video Card/DirectX Version | DirectX 11 or DirectX 12 compatible graphics card |

These minimum requirements are recommended for both development and execution environments.

### 5.5.2 Software Requirements

#### 5.5.2.1 Development Environment Requirements

Following are the software requirements for developing Settlers of K'tah:

| Category              | Requirement                                                               |
|-----------------------|---------------------------------------------------------------------------|
| Visual Studio Version | - Visual Studio 2017 v15.6 or later (recommended)<br>- Visual Studio 2019 |

In addition to these requirements, developers will need to meet the minimum software requirements listed in the next section in order to run the Unreal Engine and the project.

#### 5.5.2.2 Execution Environment Requirements

| Category         | Requirement                           |
|------------------|---------------------------------------|
| Operating System | Windows 7                             |
| DirectX Runtime  | DirectX End-User Runtimes (June 2010) |