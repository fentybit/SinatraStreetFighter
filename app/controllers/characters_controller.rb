class CharactersController < ApplicationController
    get "/signup" do 
        erb :'characters/new'
      end 
    
    post "/signup" do 
        if params[:username] == "" || params[:email] == "" || params[:password] == ""
            redirect to '/signup'
        else  
            erb :'characters/characters'
        end 
    end 

    get '/login' do 
        erb :'characters/login'
    end 

    #POST 'sign up'

    #CREATE 'character'

    #READ 'character'

    #UPDATE/EDIT 'character'

    #GET 'logout'

    #POST 'logout'
end 