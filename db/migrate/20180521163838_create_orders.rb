class CreateOrders < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :name
      t.integer :price
      t.timestamps
    end
 
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.timestamps
    end
 
    create_table :orders do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :flower, index: true
      t.string :status
      t.integer :quantity
      t.timestamps
    end
  end
end
