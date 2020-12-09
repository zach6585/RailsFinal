require 'pry'
class AuthController < ApplicationController
    skip_before_action :set_user
    def callback  
        # Access the authentication hash for omniauth
        data = request.env['omniauth.auth']
      
        # Save the data in the session
        save_in_session data
        @worker = WbwWorker.find_by(:name => session[:user_name], :email => session[:user_email])
        if @worker 
            redirect_to wbw_worker_path(@worker)
        else 
            reset_session
            redirect_to root_path 
        end 
      end

    def signout
        reset_session
        redirect_to root_url
    end
end
