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

        binding.pry
        
        @character.moves.collect do |move|
            @stage = Stage.find_by_id(params[:stage][:id])
            move.stages << @stage
        end 

        redirect to "/characters/#{@character.slug}"
    end 
end 