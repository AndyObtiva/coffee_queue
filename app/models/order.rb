class Order < ActiveRecord::Base
  belongs_to :product

  validates :customer_name, presence: true
end
