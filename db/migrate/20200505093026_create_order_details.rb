class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :odetail_price
      t.integer :odetail_quantity
      t.integer :status
      t.string :tracking_code

      t.timestamps
    end
  end
end
