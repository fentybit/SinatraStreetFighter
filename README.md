# Sinatra::Street Fighter

<div align="center">
  <img src="./public/images/main.png">
</div>

<br>

<strong>Domain Modeling :: Space Travel</strong><br>
Welcome to your Space Exploration, where you can select your space crew, pick your favorite spacecraft (powered by SpaceX), and infinite amount of planets in Milky Way Galaxy to travel to!<br>

<p><a href="https://youtu.be/amt7y-bIKkk">YouTube Demo</a></p>
<p><a href="https://dev.to/codinghall/api-cli-space-exploration-108f">DEV Blog</a></p>


## About

## Features

1.  Build an MVC Sinatra application =>
	```
    Models > User, Character, Move, Stage
    Views > erb:layout, welcome
            users erb: delete, edit, index, login, logout, signup
            characters erb: battle, index, show
            moves erb: edit, new 
            stages erb: edit, new
    Controller > application_controller
                 characters_controller 
                 moves_controller
                 stages_controller
                 users_controller  
2.  Use ActiveRecord with Sinatra =>
	```
    Applied for migration and model classes.
3.  Use multiple models =>
	```
    There are a total of 4 models. 
4.  Use at least one has_many relationship on a User model and one belongs_to relationship on another model =>
	```
    ORM relationships include has_many, belongs_to, has_and_belongs_to.
5.  Must have user accounts - users must be able to sign up, sign in, and sign out =>
	```
    Users are able to sign up, sign in/log in, edit account, delete account and sign out/log out.
6.  Validate uniqueness of user login attribute (username or email) =>
	```
    validates_uniqueness_of was implemented on both username and email.
7.  Once logged in, a user must have the ability to create, read, update and destroy the resource that belongs_to user =>
	```
    Each user has the CRUD capabilities that is unique to each respective user.
8.  Ensure that users can edit and delete only their own resources - not resources created by other users =>
	```
    Each user has the CRUD capabilities that is unique to each respective user.
9.  Validate user input so bad data cannot be persisted to the database =>
	```
    validates_presence_of was implemented on username, email and password alongside with flash[:message] to guide the user as validating input.
10. BONUS: Display validation failures to user with error messages. (This is an optional feature, challenge yourself and give it a shot!) =>
	```
    I utilized flash[:message] in lieu of @error to display error messages.
    
## Installation

Simply clone, run rake db:migrate, run shotgun.
Everything should be set up. :)


# BOOTSWATCH .css 
Bootswatch is a collection of open source themes for [Bootstrap](https://getbootstrap.com/). Check it out at [bootswatch.com](https://bootswatch.com).

Copyright and License 

Copyright 2014-2020 Thomas Park

Code released under the MIT License
