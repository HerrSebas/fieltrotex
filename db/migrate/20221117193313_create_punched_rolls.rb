class CreatePunchedRolls < ActiveRecord::Migration[7.0]
  def change
    create_table :punched_rolls do |t|
      t.float :width
      t.float :length
      t.float :weight
      t.references :line, null: false, foreign_key: true
      t.references :turn, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :reference, null: false, foreign_key: true

      t.timestamps
    end
  end
end
