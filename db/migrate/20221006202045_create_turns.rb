class CreateTurns < ActiveRecord::Migration[7.0]
  def change
    create_table :turns do |t|
      t.string :number
      t.string :entrada
      t.string :salida

      t.timestamps
    end
  end
end
