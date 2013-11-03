class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :product_option

  validates :customer_name, presence: true
end
