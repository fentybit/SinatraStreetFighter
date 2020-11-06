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
            flash[:message] = "You already have this character."
            
            redirect to '/characters' 
        else 
            current_user.characters << @character 
        end 
        redirect to "/characters/#{@character.slug}"
    end 
    
    post '/characters/:id' do 
        @character = Character.find_by_id(params[:id])
        @character.delete

        redirect to '/characters'
    end 

    get '/characters/:slug' do 
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
            binding.pry
            Move.all.each do |move|
                move.stage_moves.move_id || stage_id
            end 

            # @stage
            erb :'characters/show'
        else  
            redirect to '/login'
        end 
    end 
end 