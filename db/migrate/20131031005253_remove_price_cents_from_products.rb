class RemovePriceCentsFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :price_cents, :integer
  end
end
