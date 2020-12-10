require 'pry'
class ContactsController < ApplicationController
    def index 
        @contacts = Contact.all
    end 

    def new 
        @contact = Contact.new 
    end 

    def edit 
        @contact = Contact.find(params[:id])
    end 

    def update 
        @contact = Contact.find(params[:id])
        @contact1 = Contact.new(contact_params)
        if @contact1.valid?
            @contact.update(contact_params)
            redirect_to root_path
        else 
            render :edit 
        end 
    end 

    def create 
        Contact.new.errors.clear() 
        @contact = Contact.new(contact_params)
        if @contact.valid?
            @contact.save 
            redirect_to root_path 
        else 
            render :new 
        end 
    end 

    def delete 
        @contact = Contact.find(params[:id])
        Contact.delete(@contact)
        redirect_to root_path
    end 
    private 


    def contact_params
        params.permit(:name, :email)
    end 
end
