require 'pry'
class Contact < ApplicationRecord 
    has_and_belongs_to_many :workers
    
    # validates_with WorkersValidator
    # validates :company, :name, :email, :number, :old_address, presence: true
    # validates_with EmailValidator 

    def self.searcher(pars)
        @contacts = Contact.where(:company => Contact.find_by(:company => pars[:company])).or Contact.where(:name => Contact.find_by(:name => pars[:name])).or Contact.where(:email => Contact.find_by(:email => pars[:email]))
            .or Contact.where(:number => Contact.find_by(:number => pars[:number])).or Contact.where(:category => Contact.find_by(:category => pars[:category]))
        tracker = 0 
        ender = 0 
        pars.each do |par|
            if par != "authenticity_token" && ender == 0
                if par == "commit"
                    ender = 1
                end 
                if pars[par] == nil || pars[par] == []
                else
                    tracker += 1
                end 
            end 
        end 
        # binding.pry
        if tracker == 0
            return Contact.all 
        end 
        if pars[:workers] != [""]
            theres = []
            pars[:workers].each do |work|
                work.contacts.each do |contact| 
                    if @contacts.include?(contact)
                        theres << contact
                    end 
                end 
            end 
            if theres == [] 
                return false 
            else 
                return theres
            end 
        else 
            if @contacts 
                return @contacts
            else 
                return false 
            end 
        
        end 
    end  
end

 