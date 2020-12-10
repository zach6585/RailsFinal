class Customer < ApplicationRecord
    belongs_to :contact 
    belongs_to :wbw_worker
    validates :title, presence: true, format: {with: /[A-Za-z]/, message: "You must have a title"}
    validates :title, format: { without: /[0-9]/, message: "does not allow numbers" }
end
