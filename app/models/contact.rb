class Contact < ApplicationRecord
    belongs_to :company
    has_many :customers
    has_many :wbwworkers, through: :customers 
end
