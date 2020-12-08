require 'pry'
class CustomersController < ApplicationController
    def signin 
         #This is going to have to use an oauth2 login. Try and get office 365 to work. If not default to like facebook or the devise one
    end 

    def new 
        @worker = WbwWorker.new 
    end 

    def create 
        @worker = WbwWorker.new(wbwworker_params)
        if @worker.valid?
            @worker.save 
            session[:user_id]
            redirect_to wbwworker_path(@worker)
        else 
            render :new 
        end 
    end 
    
    def edit 
        #This part should only be accessible by admins. This is where scope will come into play 
    end 

    def update 
        #again, only accessible by admins.
        @worker = WbwWorker.find(params[:id])
        @worker.update(wbwworker_params)
        redirect_to wbwworker_path(@worker)
    end 

    def signin
       #This will be the post method for the home page 
    end 

    def destroy
        @worker = WbwWorker.find(params[:id]) 
    end 
    
    private 

    def wbwworker_params
        params.require(:wbwworker).permit(:fullname, :username, :email, :password)
    end 
end 