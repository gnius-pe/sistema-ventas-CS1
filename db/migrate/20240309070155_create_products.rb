class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.float :precio
      t.float :cost_precio
      t.integer :cantidad
      t.references :tiend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
