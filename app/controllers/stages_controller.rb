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
        binding.pry
        @character = Character.find_by_slug(params[:slug])
        @character.update(params[:character])

        redirect to "/characters/#{@character.slug}"
    end 
end 