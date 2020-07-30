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
* contract contains team instance and player instance as well as contract amount


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

     Brainstorming and Proposing a Project Idea

•	As a user, I should be able to know about every single player’s net worth
•	As a user, I want to be able to choose and set specific team for each player
•	As a user, I should be able to end contract and retire each player
•	As a user, I want to be able get information about each team’s all players
