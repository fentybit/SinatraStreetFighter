class MovesController < ApplicationController

    get '/:slug/moves/new' do
        if logged_in?
            finding_character_slug
            erb :'moves/new'
        else  
            redirect to '/login'
        end     
    end 

    post '/:slug/moves/new' do
        finding_character_slug
        @character.update(params[:character])

        if !params[:move][:name].empty?
            @character.moves << Move.find_or_create_by(name: params[:move][:name])
        end 

        @character.save

        redirect to "/characters/#{@character.slug}"
    end 

    get '/:slug/moves/edit' do 
        if logged_in?
            finding_character_slug
            erb :'moves/edit'
        else  
            redirect to '/login'
        end 
    end 

    patch '/:slug/moves/edit' do 
        finding_character_slug
        
        if params[:character].nil?
            @character.moves = []
        else  
            @character.update(params[:character])
        end 

        if !params[:move][:name].empty?
            @character.moves << Move.find_or_create_by(name: params[:move][:name])
        end 

        @character.save

        redirect to "/characters/#{@character.slug}"
    end 
    
end 