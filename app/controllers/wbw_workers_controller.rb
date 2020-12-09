require 'pry'
class WbwWorkersController < ApplicationController

    def index 
        @workers = WbwWorker.all 
    end 
    
    def show 
        @worker = WbwWorker.find(params[:id])
    end 

    def new 
        @worker = WbwWorker.new 
    end 

    def create 
        @worker = WbwWorker.new(wbwworker_params)
        if @worker.valid?
            @worker.save 
            redirect_to wbwworker_path(@worker)
        else 
            render :new 
        end 
    end 
    
    def edit 
        @worker = WbwWorker.new(wbwworker_params)
    end 

    def update 
        #again, only accessible by admins.
        @worker = WbwWorker.find(params[:id])
        @worker.update(wbwworker_params)
        redirect_to wbwworker_path(@worker)
    end 

    def destroy
        @worker = WbwWorker.find(params[:id]) 
    end 
    
    private 

    def wbwworker_params
        params.permit(:name, :username, :email, :password)
    end 
end 