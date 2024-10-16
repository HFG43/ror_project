class AddTeamIdToTrainers < ActiveRecord::Migration[7.1]
  def change
    add_reference :trainers, :team, null: false, foreign_key: true
  end
end
