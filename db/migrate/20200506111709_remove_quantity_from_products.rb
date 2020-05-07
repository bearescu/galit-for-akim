class RemoveQuantityFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :quantity, :integer
    add_column :products, :stock, :integer
    add_column :products, :color, :string
    add_column :products, :units_per_item, :integer
  end
end
