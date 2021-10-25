class Step < ApplicationRecord
  belongs_to :journeys, :optional => true
end
