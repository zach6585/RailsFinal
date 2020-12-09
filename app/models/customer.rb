class Customer < ApplicationRecord
    belongs_to :contact 
    belongs_to :wbw_worker
end
