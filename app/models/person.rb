class Person < ApplicationRecord
    #has_one :other_details
    belongs_to :other_details
end
