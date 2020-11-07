class UsersController < ApplicationController 

    # before do
    #     require_login
    # end 

    get '/signup' do 
        if logged_in?
            redirect to '/characters'
        else 
            erb :'users/signup'
        end 
      end 
    
    post '/signup' do 
        @user = User.new(username: params[:username], email: params[:email], password: params[:password])
        
        if User.find_by(username: @user.username)
            flash[:message] = "The username already exists. Please use a different username."
            redirect to '/signup'
        elsif User.find_by(email: @user.email)
            flash[:message] = "The email already exists. Please use a different email."
            redirect to '/signup'
        elsif !@user.save
            flash[:message] = "Please enter all required fields."
            redirect to '/signup'
        else  
            @user.save
            session[:user_id] = @user.id 
            redirect to '/characters'
        end 
    end 

    get '/login' do 
        if logged_in?
            redirect to '/characters'
        else 
            erb :'users/login'
        end 
    end 

    post '/login' do 
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect to '/characters'
        elsif params[:username] == "" || params[:password] == ""
            flash[:message] = "Please enter username and password."
            redirect to '/login' 
        elsif !@user
            flash[:message] = "Please enter a valid username."
            redirect to '/login'  
        elsif !@user.authenticate(params[:password])
            flash[:message] = "Please enter a valid password."
            redirect to '/login'  
        end 
    end 

    get '/logout' do 
        if logged_in?
            erb :'users/logout'
        else
            redirect to '/login'
        end 
    end 

    post '/logout' do 
        session.clear 
        redirect to '/'
    end 
end 