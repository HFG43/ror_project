class CreateParents < ActiveRecord::Migration[7.1]
  def change
    create_table :parents do |t|
      t.string :gender
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
