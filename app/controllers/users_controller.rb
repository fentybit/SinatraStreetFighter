class UsersController < ApplicationController 

    get '/signup' do 
        if logged_in?
            redirect to '/characters'
        else 
            erb :'users/signup'
        end 
      end 
    
    post '/signup' do 
        if params[:username] == "" || params[:email] == "" || params[:password] == ""
            flash[:message] = "Invalid Input. Please enter your information."
            redirect to '/signup'
        else  
            @user = User.create(username: params[:username], email: params[:email], password: params[:password])
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
        elsif !@user
            flash[:message] = "Invalid Username."
            redirect to '/login'  
        elsif !@user.authenticate(params[:password])
            flash[:message] = "Invalid Password."
            redirect to '/login'  
        end 
    end 
end 