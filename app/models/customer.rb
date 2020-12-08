class Customer < ApplicationRecord
    belongs_to :contact 
    belongs_to :wbwworker
    belongs_to :architect 
    belongs_to :broker 
    belongs_to :pmfirm

    def self.searcher(hsh)
        Customer.find_by(:wb_wood_worker_id => WBWoodWorker.find_by(:name => hsh[:wbwworker]).id, 
        :contact_id => Contact.find_by(:name => hsh[:contact]).id, :architect_id => Architect.find_by(:name => hsh[:architect]).id,
        :broker_id => Broker.find(:name => hsh[:broker_id]).id, :pmfirm_id => PmFirm.find_by(:name => hsh[:pm_firm]).id)
    end
end
