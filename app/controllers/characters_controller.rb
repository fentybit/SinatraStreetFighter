class CharactersController < ApplicationController
    get '/signup' do 
        if logged_in?
            redirect to '/characters'
        else 
            erb :'characters/create_user'
        end 
      end 
    
    post '/signup' do 
        if params[:username] == "" || params[:email] == "" || params[:password] == ""
            redirect to '/signup'
        else  
            @character = Character.create(username: params[:username], email: params[:email], password: params[:password])
            session[:character_id] = @character.id 
            redirect to '/characters'
        end 
    end 

    get '/login' do 
        if logged_in?
            redirect to '/characters'
        else 
            erb :'characters/login'
        end 
    end 

    post '/login' do 
        @character = Character.find_by(username: params[:username])

        if @character && @character.authenticate(params[:password])
            session[:character_id] = @character.id 
            redirect to '/characters'
        else
            redirect to '/login'  
        end 
    end 

    get '/characters' do 
        erb :'characters/characters'
    end 
    
    #CREATE 'character'

    #READ 'character'

    #UPDATE/EDIT 'character'

    get '/logout' do 
        if logged_in?
            session.clear 
            redirect to '/login'
        else
            redirect to 'login'
        end 
    end 


end 