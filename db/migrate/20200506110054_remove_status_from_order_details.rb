class RemoveStatusFromOrderDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_details, :status, :integer
  end
end
