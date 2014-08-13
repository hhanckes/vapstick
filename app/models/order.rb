class Order < ActiveRecord::Base
  before_save :set_prices
  
  belongs_to :shipping_area
  has_many :product_orders, dependent: :destroy
  has_many :products, through: :product_orders
  
  validates :name, :phone_number, :shipping_area_id, :product_orders, :address, presence: true
  
  accepts_nested_attributes_for :product_orders, :reject_if => proc { |a| a[:product_id].blank? }, :allow_destroy => true
  
  private
  
    def set_prices
      self.shipping_cost = self.shipping_area.cost
      self.product_orders.each do |po|
        po.product_price = po.product.price
      end
    end
    
end
