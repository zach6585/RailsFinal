class Customer < ApplicationRecord
    belongs_to :contact 
    belongs_to :wbw_worker
    validates :title, presence: true, format: {with: /[A-Za-z]/, message: "You must have a title"}
    validates :title, format: { without: /[0-9]/, message: "does not allow numbers" }
    
    def self.searcher(pars)
        @customer = Customer.where(:wbw_worker_id => WbwWorker.find_by(:name => pars[:wbw_worker])&.id).or Customer.where(:contact_id => Contact.find_by(:name => pars[:contact])&.id)
        if @customer 
           return @customer
        else 
            return false 
        end 
    end  
end

