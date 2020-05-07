class AddItemQuantityToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :item_quantity, :integer
  end
end
