class AddProductOptionIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :product_option_id, :integer
  end
end
