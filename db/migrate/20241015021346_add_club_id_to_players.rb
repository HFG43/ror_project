class AddClubIdToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_reference :players, :club, null: false, foreign_key: true
  end
end
