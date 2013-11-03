class CreateProductOptions < ActiveRecord::Migration
  def change
    create_table :product_options do |t|
      t.string :name
      t.integer :product_id
      t.integer :price_cents

      t.timestamps
    end
  end
end
