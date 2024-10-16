class Player < ApplicationRecord
    belongs_to :user
    belongs_to :club
    belongs_to :team
    has_many :parents
end
