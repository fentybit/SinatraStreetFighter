class StagesController < ApplicationController 
    get '/:slug/stages/new' do 
        if logged_in?
            finding_character_slug
            if @character.moves.empty?
                flash[:message] = "Please select your fighting moves beforehand."
                redirect to "/characters/#{@character.slug}"
            end 
            erb :'stages/new'
        else  
            redirect to '/login'
        end   
    end 

    post '/:slug/stages/new' do 
        finding_character_slug

        @character.moves.collect do |move|
            @stage = Stage.find_by(name: params[:stage][:name])
            move.stages << @stage
        end 
        @character.save

        redirect to "/characters/#{@character.slug}/#{@stage.id}"
    end 

    get '/:slug/stages/edit' do 
        if logged_in?
            finding_character_slug
            erb :'stages/edit'
        else  
            redirect to '/login'
        end   
    end 

    post '/:slug/stages/edit' do 
        finding_character_slug

        @character.moves.collect do |move|
            @stage = Stage.find_by(name: params[:stage][:name])
            move.stages << @stage
        end 

        @character.save

        redirect to "/characters/#{@character.slug}/#{@stage.id}"
    end 
end 