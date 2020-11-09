class CharactersController < ApplicationController 
    get '/characters' do 
        if logged_in?
            erb :'characters/index'
        else 
            redirect to '/login'
        end 
    end 
    
    post '/characters' do 
        selected_char = Character.find_by(name: params[:character_name])

        if !current_user.characters.find_by(name: params[:character_name]).nil?
            flash[:message] = "You already have this character."
            
            redirect to '/characters' 
        else 
            @character = selected_char.dup
            current_user.characters << @character 
        end 
        redirect to "/characters"
    end 
    
    delete '/characters/:slug' do 
        finding_character_slug
        @character.destroy

        redirect to '/characters'
    end 

    get '/characters/:slug' do 
        if logged_in?
            finding_character_slug

            # if !@character.moves.empty?
            #     @stage = Stage.all.find {|stage| stage.moves == @character.moves}
            # end 

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
            finding_character_slug
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
            finding_character_slug
            @stage = Stage.find_by_id(params[:id])

            erb :'characters/show'
        else  
            redirect to '/login'
        end 
    end 
end 