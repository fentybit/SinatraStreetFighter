class MovesController < ApplicationController

    get '/:slug/moves/new' do
        if logged_in?
            @character = Character.find_by_slug(params[:slug])
            erb :'moves/edit'
        else  
            redirect to '/login'
        end     
    end 


    get '/:slug/moves/edit' do 
    
    end 

    #CREATE 'moves/new'

    #POST 'moves/:slug'

    

end 