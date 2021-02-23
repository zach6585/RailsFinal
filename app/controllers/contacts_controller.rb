class ContactsController < ApplicationController
    def index 
        @contacts = Contact.all 
    end 

    def show 
        @contact = Contact.find(params[:id])
    end 

    def new 
        @contact = Contact.new 
    end 

    def create
        
        #Contact.new.errors.clear() 
        @contact = Contact.new(:company => params[:company], :name => params[:name], :email => params[:email], :number => params[:number], 
         :title => params[:title], :old_address => params[:old_address], :new_address => params[:new_address], :category => params[:category], :broker_name => 
         params[:broker_name], :broker_company => params[:broker_company], :broker_number => params[:broker_number],
         :architect_name => params[:architect_name], :architect_company => params[:architect_company], 
         :architect_number => params[:architect_number],
         :consultant_name => params[:consultant_name], :broker_company => params[:consultant_company], :consultant_number => params[:consultant_number], :notes => "")
        #  binding.pry
         params[:workers].each do |worker|
            if worker != ""
                joker = Worker.find(worker.to_i)
                @contact.workers << joker
            end 
        end 
        if @contact.valid?
            @contact.save  
            redirect_to root_path 
        else 
            render :new 
        end 
    end 

    def update 
        
        @contact = Contact.find(params[:id])
        
        if @contact.notes == nil
            @contact.update(:notes => params[:"/contacts/#{@contact.id}"][:notes])
        else 
            if params[:"/contacts/#{@contact.id}"][:notes] != ""
                @contact.update(:notes => "#{@contact.notes}, #{Time.now.strftime("%B %e %Y at %I:%M %p")}: #{params[:"/contacts/#{@contact.id}"][:notes]}")
            end
        end  
        redirect_to contact_path(@contact)
    end 

    def destroy
        a = Contact.find(params[:id])
        Contact.delete(a)
        redirect_to root_path  
    end 

    def results 
        @contacts = Contact.searcher(params)
        
        if @contacts
            redirect_to "/contacts" 
        else 
            redirect_to 'search' 
        end  
    end 

    def search
        @contacts = Contact.all 
    end 

   
    
   
end