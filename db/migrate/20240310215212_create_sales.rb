class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.string :customer_name
      t.date :sale_date
      t.decimal :total
      t.references :tiend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
