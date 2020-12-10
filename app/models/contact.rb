class Contact < ApplicationRecord
    has_many :customers
    has_many :wbwworkers, through: :customers 
    validates :name, presence: true
    validates :email, presence: true
    validates :name, format: { without: /[0-9]/, message: "does not allow numbers" }
    validates_with EmailValidator

end
