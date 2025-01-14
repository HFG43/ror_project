class CreateCoordinators < ActiveRecord::Migration[7.1]
  def change
    create_table :coordinators do |t|
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
