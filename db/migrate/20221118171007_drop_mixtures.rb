class DropMixtures < ActiveRecord::Migration[7.0]
  def change
    drop_table :mixtures
  end
end
