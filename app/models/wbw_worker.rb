class WbwWorker < ApplicationRecord
    include ActiveModel::Validations
    has_many :customers
    has_many :clients, through: :customers
    has_secure_password
    validates :fullname, presence: true 
    #I'm not validating on uniqueness of fullname as two people can have the same name.
    validates :username, presence: true 
    validates :username, uniqueness: true 
    validates :password_digest, presence: true 
    validates_with PasswordValidator
    validates :email, presence: true
    validates :email, uniqueness: true 
end
