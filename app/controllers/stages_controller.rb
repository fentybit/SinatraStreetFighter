class StagesController < ApplicationController 
    get '/:slug/stages/new' do 
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
            erb :'stages/new'
        else  
            redirect to '/login'
        end   
    end 

    post '/:slug/stages/new' do 
        @character = Character.find_by_slug(params[:slug])

        @character.moves.collect do |move|
            @stage = Stage.find_by_id(params[:stage][:id])
            move.stages << @stage
        end 
            
        @character.save

        redirect to "/characters/#{@character.slug}"
    end 

    get '/:slug/stages/edit' do 
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
            erb :'stages/edit'
        else  
            redirect to '/login'
        end   
    end 

    post '/:slug/stages/edit' do 
        @character = Character.find_by_slug(params[:slug])

        @character.moves.collect do |move|
            @stage = Stage.find_by_id(params[:stage][:id])
            move.stages << @stage
        end 

        @character.save

        redirect to "/characters/#{@character.slug}"
    end 
end 