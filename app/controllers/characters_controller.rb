class CharactersController < ApplicationController

    get '/characters' do 
        if logged_in?
            erb :'characters/index'
        else 
            redirect to '/login'
        end 
    end 
    
    post '/characters' do 
        @character = Character.find_by_id(params[:character_id])
        if current_user.characters.include?(@character)
            flash[:message] = "You already have the character."

            redirect to '/characters' 
        else 
            current_user.characters << @character 
        end 
        redirect to "/characters/#{@character.slug}"
    end 

    get '/characters/:slug' do 
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
            erb :'characters/show'
        else  
            redirect to '/login'
        end 
    end 

    get '/logout' do 
        if logged_in?
            session.clear 
            redirect to '/login'
        else
            redirect to '/login'
        end 
    end 

end 