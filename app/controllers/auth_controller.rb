require 'pry'
class AuthController < ApplicationController
    skip_before_action :set_user
    provider_ignores_state = false
    def callback  
        # Access the authentication hash for omniauth
        data = request.env['omniauth.auth']
      
        # Save the data in the session
        save_in_session data
        @worker = Worker.find_by(:name => session[:user_name], :email => session[:user_email])
        if @worker 
        else 
            reset_session 
        end 
        redirect_to root_path 
      end

    def signout
        reset_session
        redirect_to root_url
    end
end
