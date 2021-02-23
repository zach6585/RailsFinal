class WorkersController < ApplicationController
    def new 
        @worker = Worker.new 
    end 

    def create 
        # binding.pry
        @worker = Worker.new(:email => params[:email])
        if params[:email] == params[:confirmation]
            @worker.save 
            redirect_to root_path
        else 
            redirect_to new_worker_path
        end         
    end 

    def destroy
          
    end 
end