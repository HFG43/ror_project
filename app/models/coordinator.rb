class Coordinator < ApplicationRecord
  belongs_to :user
  belongs_to :team
  belongs_to :club
end
