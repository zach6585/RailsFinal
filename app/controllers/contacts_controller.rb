require 'pry'
class ContactsController < ApplicationController
    def show 
        @contact = Contact.find(params[:id])
    end 

    def new 
        @contact = Contact.new 
    end 

    def edit 
        binding.pry
    end 

    def create 
        @contact = Contact.new(contact_params)
        # if @contact.valid?
        #     @contact.save 
        #     redirect_to 
    end 


    private 


    def contact_params
        params.permit(:name, :email)
    end 
end
