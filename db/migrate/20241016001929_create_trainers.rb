class CreateTrainers < ActiveRecord::Migration[7.1]
  def change
    create_table :trainers do |t|
      t.boolean :isFather
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end