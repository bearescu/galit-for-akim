class RemoveTrackingCodeFromOrderDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_details, :tracking_code, :string
  end
end
