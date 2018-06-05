class Customer < ActiveRecord::Base
  has_many :orders
  has_many :flowers, through: :orders 
end
