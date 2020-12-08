class Broker < ApplicationRecord
    belongs_to :company
    has_many :customers
end
