class Team < ApplicationRecord
  belongs_to :club
  has_many :players
  has_many :trainers
end
