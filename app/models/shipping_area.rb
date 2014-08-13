class ShippingArea < ActiveRecord::Base
  has_many :orders
  
  def name_with_cost
    self.name #+ number_to_currency(self.cost, precision: 0)
  end
end
