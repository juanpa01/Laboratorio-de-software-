class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.string :marca
      t.string :categoria
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
