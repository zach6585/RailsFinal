require 'pry'
class CustomersController < ApplicationController

    def index 
        @customers = Customer.all 
    end 

    def show 
        @customer = Customer.find(params[:id])
    end 

    def new 
        
        @customer = Customer.new 
    end 

    def create
        Customer.new.errors.clear() 
        @customer = Customer.new(:title => params[:title], :wbw_worker_id => params[:wbw_worker_id], :contact_id => params[:contact_id])
        if @customer.valid? 
            @customer.save 
            redirect_to wbw_worker_customer_path(WbwWorker.find(params[:wbw_worker_id]), @customer)
        else 
            render :new
        end 
    end 

    def update 
        
        @customer = Customer.find(params[:id])
        # binding.pry
        if @customer.notes == nil
            @customer.update(:notes => "#{params[:"/wbw_workers/#{params[:wbw_worker_id]}/customers/#{params[:id]}"][:notes]}")
        else 
            if params[:"/wbw_workers/#{params[:wbw_worker_id]}/customers/#{params[:id]}"][:notes] == ""
            else 
                @customer.update(:notes => "#{@customer.notes}, #{Time.now.strftime("%B %e %Y at %I:%M %p")}: #{params[:"/wbw_workers/#{params[:wbw_worker_id]}/customers/#{params[:id]}"][:notes]}")
            end
        end  
        redirect_to wbw_worker_customer_path(WbwWorker.find(params[:wbw_worker_id]), @customer)
    end 

    def destroy
        a = Customer.find(params[:id])
        Customer.delete(a)
        redirect_to wbw_worker_customers_path(WbwWorker.find_by(:name => session[:user_name], :email => session[:user_email]))  
    end 

    def search
        @customers = Customer.searcher(params)
        
        if @customers
            render "results" 
        else 
            redirect_to '/customers/index' 
        end  
    end 

   
    
    private 

    def customer_params 
        params.permit(:title, :wbw_worker_id, :contact_id)
    end 
end
