class AddProductPriceToProductOrder < ActiveRecord::Migration
  def change
    add_column :product_orders, :product_price, :decimal
  end
end
