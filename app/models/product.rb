class Product < ActiveRecord::Base
  has_many :product_orders
  has_many :orders, through: :product_orders
  
 def name_with_price
   return self.name #+ number_to_currency(self.price, precision: 0)
 end
 
end
