class OtherDetail < ApplicationRecord
    belongs_to :person
    has_one :person

end
