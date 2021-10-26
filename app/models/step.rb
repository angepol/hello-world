class Step < ApplicationRecord
  belongs_to :journey, :optional => true
end
