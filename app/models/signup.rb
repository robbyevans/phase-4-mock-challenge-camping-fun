class Signup < ApplicationRecord
  belongs_to :activties
  belongs_to :campers

  validates :time, :inclusion => 0..23 
end
