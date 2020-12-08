require 'pry'
class CustomersController < ApplicationController

    def home
    end 

    def show 
        #This will be the individual customer
        @customer = Customer.find(params[:id])
    end 

    def new 
        #A
        #This will be how you create a new customer. Although,
        #I would argue it should be different depending on your privileges 
        #If you're an admin, it creates. If you're a regular user
        #It sends a request. You could just use a conditional
        @customer = Customer.new 
    end 

    def create 
        #For the moment, this will exclusively create, as I haven't
        #set up validity yet. For now (as of 11/5/20), my goal is to make a proof 
        #of concept, not to involve everything. Later, I will include everything.
        @customer = Customer.create(params)
        redirect_to customer_path(@customer)
    end 

    def edit 
        #This is special because depending on privileges you can
        #only edit so much.
        @customer = Customer.find(params[:id])
    end 

    def update 
        #Again, for the moment this will exclusively update, meaning 
        #I assume it always works. Validity comes later
        @customer.find(params[:id])
        @customer.update(params)
        redirect_to customer_path(@customer)
    end 

    def destroy
        #Gotta make sure the views file coincides
        Customer.find(params[:id]).destroy 
        redirect_to customers_path  
    end 
    


    # private 

    # def customer_params
        
    #     params.require(:cutomer).permit(:)
    #Currently, the concept of making something like this is a little 
    #foreign, since I don't know what qualities would be needed for this
    #Would you even use strong params for a join table? No you wouldn't, since you would do it in the other controllers

    
end
