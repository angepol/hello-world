class User < ApplicationRecord
  validates :email, :presence => true, :uniqueness => true
  has_secure_password
  has_many :journeys
  has_many :steps, :through => :journeys
end
