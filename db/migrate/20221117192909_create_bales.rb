class CreateBales < ActiveRecord::Migration[7.0]
  def change
    create_table :bales do |t|
      t.float :weight
      t.references :material, null: false, foreign_key: true
      t.references :turn, null: false, foreign_key: true
      t.references :line, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
