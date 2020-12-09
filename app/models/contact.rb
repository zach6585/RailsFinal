class Contact < ApplicationRecord
    has_many :customers
    has_many :wbwworkers, through: :customers 
    validates :name, presence: true
    validates :email, presence: true
end
