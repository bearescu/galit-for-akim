class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :surname
      t.string :address1
      t.string :address2
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country
      t.integer :phone
      t.string :order_tracking_number
      t.decimal :order_shipping_cost, precision: 10, scale: 2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
