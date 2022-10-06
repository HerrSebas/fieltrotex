class CreateReferences < ActiveRecord::Migration[7.0]
  def change
    create_table :references do |t|
      t.string :code
      t.string :name
      t.string :color
      t.string :tipo

      t.timestamps
    end
  end
end
