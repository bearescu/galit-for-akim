class AddTotalCostToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :total_cost, :integer
  end
end
