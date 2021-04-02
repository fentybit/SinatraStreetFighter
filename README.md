# Sinatra::Street Fighter

<div align="center">
  <img src="./public/images/main.png">
</div>

<br>

<strong>Domain Modeling :: Street Fighter</strong><br>
Welcome to my simplistic version of Street Fighter simulation.<br> 
You can select a character, add fighting moves and a final stage where your epic battle commences!<br>

<p><a href="https://youtu.be/pvurDvp8TZY">YouTube Demo</a></p>
<p><a href="https://dev.to/fentybit/sinatra-x-street-fighter-1hgl">DEV Blog</a></p>


## About

<p>In my Street Fighter domain modeling universe, the Minimum Viable Product (MVP) I was aiming for this capstone project would be to allow a user to select a character and perform character's fighting moves on multiple stage platforms.</p>
<p>The extended function I am aiming for would be to save a user's session when signing up or logging in, and user's ability to record multiple selections of characters with various fighting moves and stage platforms.</p>

## Features

<div align="center">
  <img src="./public/images/erd.jpeg">
</div>

<br>

**Models** <br>
User, Character, Move, Stage<br>

> user has_many :characters

> character `belongs_to` :user<br>
> character `has_many` :moves<br>
> character `has_many` :stages, `through:` :moves

> stage `has_and_belongs_to_many` :moves<br>
> stage `has_many` :characters, `through:` :moves<br>

> move `belongs_to` :character<br>
> move `has_and_belongs_to_many` :stages<br>

**Views** <br>
Welcome Page<br>
Users :: delete, edit, index, login, logout, signup<br>
Characters :: battle, index, show<br>
Moves :: edit, new<br>
Stages :: edit, new<br>

**Controller** <br>
ApplicationController<br>
CharactersController<br>
MovesController<br>
StagesController<br>
UsersController<br>

**User Account and Validation** <br>
Sign Up<br>
Edit<br>
Sign Out<br>
<i>validate_uniqueness_of</i><br>
<i>validates_presence_of</i><br>

**CRUD** <br>
Each user has the CRUD (Create, Read, Update and Delete) capabilities that is unique to each respective user.<br>
    
## Installation

```ruby
$ git clone 👾
$ bundle install
$ rake db:migrate 
$ shotgun
```
Open Chrome browser, and redirect to 'http://localhost:9292' to start the app.

## Stack
- [x] Active Record
- [x] Bcrypt
- [x] Sinatra
- [x] SQLite
- [x] HTML/CSS
- [x] Rack-flash3
- [x] Bootswatch

## Resources

- [x] <a href="https://github.com/thebrianemory/corneal">Ruby Gem Corneal</a>
- [x] <a href="https://srk.shib.live/w/Street_Fighter_V">Street Fighter V Wiki</a>
- [x] <a href="https://bootswatch.com/">Free themes for Bootstrap</a>
- [x] <a href="https://guides.rubyonrails.org/association_basics.html">Active Record Associations</a>
