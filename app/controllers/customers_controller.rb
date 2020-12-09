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
        @customer = Customer.new(params)
        redirect_to customer_path(@customer)
    end 

    def update 
        # binding.pry
        @customer = Customer.find(params[:id])
        @customer.update(:notes => @customer.notes + "#{params[:"/wbw_workers/#{params[:wbw_worker_id]}/customers/#{params[:id]}"][:notes]},")
        redirect_to wbw_worker_customer_path(WbwWorker.find(params[:wbw_worker_id]), @customer)
    end 

    def destroy
        a = Customer.find(params[:id])
        Customer.delete(a)
        redirect_to wbw_worker_customers_path(current_user)  
    end 
end
