class Order < ActiveRecord::Base
    belongs_to :flower
    belongs_to :customer
    validates_presence_of :quantity, :customer_id, :flower_id
end
