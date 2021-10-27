class Step < ApplicationRecord
  belongs_to :journey, :optional => true
  geocoded_by :location
  after_validation :geocode
end
