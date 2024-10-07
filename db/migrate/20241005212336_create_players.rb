class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :position
      t.string :school
      t.date :birthdate

      t.timestamps
    end
  end
end
