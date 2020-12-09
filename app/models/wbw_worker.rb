class WbwWorker < ApplicationRecord
    has_many :customers
    has_many :clients, through: :customers
    validates :name, presence: true
    validates :email, presence: true
    # address = ValidEmail2::Address.new(visitor.email)
    
end
