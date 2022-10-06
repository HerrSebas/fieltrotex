class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :code
      t.string :name
      t.float :quantity

      t.timestamps
    end
  end
end
