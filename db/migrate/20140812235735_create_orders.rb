class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone_number
      t.integer :address
      t.integer :shipping_area_id

      t.timestamps
    end
  end
end
