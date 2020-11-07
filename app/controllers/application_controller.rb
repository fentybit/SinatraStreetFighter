require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, ENV["SESSION_SECRET"]
    use Rack::Flash  
  end

  get '/' do
    erb :welcome
  end

  helpers do 
    def logged_in?
      !!current_user
    end 

    def current_user
      User.find(session[:user_id]) if session[:user_id]
    end 

    def require_login
      unless logged_in?
        erb :'/users/login'
      end 
    end 
  end 

end 