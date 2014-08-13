class CreateShippingAreas < ActiveRecord::Migration
  def change
    create_table :shipping_areas do |t|
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
