# PokeSim

PokeSim is a project build with ruby on rails with an mvc design pattern

PokeSim is a platform where a user can simulate the experience of catching and collecting Pokemon. A user can travel around the map, experiencing all of the different pokemon. In addition to that each pokemon has its own capture rate and flee rate so try to catch it before it runs away. Collect all of the pokemon in the game to win.

## Features

Traveling around 8 unique maps all housing approtiate Pokemon types based on the terrain. Each area has random number generators determining what species of pokemon you run into, or if you run into a pokemon at all. <br/>
<br/>
![travel map](https://user-images.githubusercontent.com/69116393/102363901-e6c70380-3f83-11eb-9b95-300d932a6112.gif)
<br/>
<br/>



The battle screen where capturing takes place. Each species has its own capture rate as well as a flee rate using a random number generator. When you attempt to click the pokeball capture button the number generators check to see if you caught it, if not, it checks to see if it ran away. If neither of the numbers indicate this the process starts over and you can try again until one of these events happen. There are restrictions in place to make sure you can only catch one of each Pokemon. <br/>

![capture experience capture](https://user-images.githubusercontent.com/69116393/102371785-8f796100-3f8c-11eb-8d27-cb9e95a969fe.gif)

<br/>
<br/>

## Architecture and models
Models include: <br/>
* The Trainer model who acts as the "user" 
* Species is the pokemon in general. This is "all of the pikachus" and "all of the mewtwos" this determines the capture rate and flee rate 
* Poke is an individual Pokemon. A join table between Trainer and Species. This is "your pikachu" that you yourself captured 
* Area houses all of the Species and is where the game logic happens. It has an encounter rate. 
<br/>
* Trainer has many Pokes and has many Species through Pokes
* Species has many Pokes and has many Trainers through Pokes
* Area has many Species


## Technologies
* Built on ruby '2.6.1'
* rails (~> 6.0.3, >= 6.0.3.3)
* PokeSim uses a postgres database
* Authentication done with 'bcrypt' ruby gem
* semantic ui for styling

Setup
$ bundle install (to download gems) <br/>
$ rails db:create <br/>
$ rails db:migrate <br/>
$ rails db:seed <br/>
$ rails s (to start server) <br/>
