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
    
    delete '/characters/:slug' do 
        @character = Character.find_by_slug(params[:slug])
        
        revised_chars = []

        current_user.characters.each do |character|
            if character != @character
                revised_chars << character 
            end 
        end 

        current_user.characters = revised_chars

        redirect to '/characters'
    end 

    get '/characters/:slug' do 
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
                  
            # if !@character.moves.empty?
            #     @stage = Stage.all.find {|stage| stage.moves == @character.moves}
            # end 

            # binding.pry

            #! methods if using a join table
            # @character.moves.each do |move|
            #     move.moves_stages.each do |move_stage|
            #         @stage = Stage.all.find {|stage| stage.id == move_stage.stage_id}
            #     end 
            # end 

            erb :'characters/show'
        else  
            redirect to '/login'
        end 
    end 

    get '/characters/:slug/:id/battle' do 
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
            @stage = Stage.find_by_id(params[:id])

            if @character.moves.empty? || @stage.nil?
                flash[:message] = "Make sure you have both fighting moves and a stage selection."
                redirect to "/characters/#{@character.slug}"
            else  
                erb :'characters/battle'
            end 
        else
            redirect to '/login'
        end 
    end 

    get '/characters/:slug/:id' do 
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
            @stage = Stage.find_by_id(params[:id])

            erb :'characters/show'
        else  
            redirect to '/login'
        end 
    end 
end 