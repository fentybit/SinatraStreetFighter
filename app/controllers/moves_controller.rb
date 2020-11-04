class MovesController < ApplicationController

    get '/:slug/moves' do
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
            erb :'moves/edit'
        else  
            redirect to '/login'
        end     
    end 

    # patch 

    #CREATE 'moves/new'

    #POST 'moves/:slug'

    

end 