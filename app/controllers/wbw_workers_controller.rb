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
        WbwWorker.new.errors.clear()
        @worker = WbwWorker.new(wbwworker_params)
        if @worker.valid?
            @worker.save 
            redirect_to root_path
        else 
            render :new 
        end 
    end 
    
    def edit 
        @worker = WbwWorker.find(params[:id])
    end 

    def update 
        @worker = WbwWorker.find(params[:id])
        @worker1 = WbwWorker.new(wbwworker_params)
        if @worker1.valid?
            @worker.update(wbwworker_params)
            redirect_to root_path
        else 
            render :edit 
        end 
    end 

    def destroy
        @worker = WbwWorker.find(params[:id]) 
    end 
    
    private 

    def wbwworker_params
        params.permit(:name, :username, :email, :password)
    end 
end 