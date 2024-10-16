class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :division
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
