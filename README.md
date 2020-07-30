# Fifa-CLI-app

## Models & Relationships
### Player -< Contract >- Team

- A Player can have many contracts with different teams
- A Player can have many teams through contracts

- A Team can have many contracts
- A Team can have many players through contracts

- A Contract belongs to a team
- A Contract belongs to a player

## MVP
* Player can be created
* Player method for returning team name & contract details
* Contract contains team instance and player instance as well as contract amount
* Player can be retired to keep up to date data of active players
* Teams joining a league can be created

## Class instance variables
### Player
* Name
* Position
* Player number

### Team
* Name
* League

### Contract
* Player instance
* Team instance
* Contract sign date
* Amount

### User Stories
* As a user, I should be able to know about every single player’s team and contract details
* As a user, I want to be able to choose and set specific team for each new player
* As a user, I should be able to end contract and retire each player
* As a user, I want to be able get information about each team’s players
