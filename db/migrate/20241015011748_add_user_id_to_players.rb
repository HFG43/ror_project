class AddUserIdToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_reference :players, :user, null: false, foreign_key: true
  end
end
