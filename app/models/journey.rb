class Journey < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :steps
  validates :departure_date, :presence => true
  validates :return_date, :presence => true
end
