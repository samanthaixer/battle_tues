# The Battle

## The project

This project creates a very basic battle game where 2 players can attack each other.

The players take turns and cause each other damage (reducing the hit points).

As the game is as simple as that, player 2 will always lose.

## Technologies used

- RSpec and Capybara for testing
- Sinatra for the web app
- Ruby for the classes in the Model layer

## Features still to implement

- Change the global variable $game to something better - the last step of the basic challenge
- Stopping the game when one of the players reaches 0. At the moment it just displays a message and allows the players to continue attacking each other
- Any further advanced steps to make the game more competitive

## Installing the project

- `git clone git@github.com:samanthaixer/battle_tues.git`
- `bundle install`

## Testing the project

- From the root directory, run `rspec`

## Running the app

- `rackup -p 4567` will run the app on port 4567
- Go to `http://localhost:4567` to start using the app
- **beware** the currently hideous styling - I am still trying to work out how to use CSS

## Approach

This project was completed in the afternoons of Week 3. I started the project with Kim and compeleted it to this stage on my own. I have sometimes used the walkthrough but tried to do it myself towards the latter stages of the challenge.

I haven't yet fully checked for single responsibility or checked that the code and tests are DRY.

## User stories implemented

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,˜
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first

```

## Extension user stories to be implemented

```
As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a lonely Player,
So I can keep my Battle skills up to scratch
I want to play a Computerised opponent

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can better enjoy a game of Battle,
I want some of my attacks to Paralyse an opponent (chance of losing their next attack)

As a Player,
So I can better enjoy a game of Battle,
I want one of my attacks to have a chance of Poisoning my Opponent (Opponent takes a small random amount of damage at the beginning of their turn)

As a Player,
So I can better enjoy a game of Battle,
I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points

As a Player,
So I can enjoy my game of Battle,
I want a sexy user interface

```
