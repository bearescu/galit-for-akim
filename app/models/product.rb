class Product < ApplicationRecord
  has_many :order_line_items
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, presence: true, numericality: true, on: :create
  validates :stock, presence: true, numericality: true, on: :update

  def update_stock(id, quantity)
    # stock of bracelets not packs
    # in controller add stock will pass quantity, decrease stock will pass quanity*-1
    current_product(id)
    current_product.update_attributes(stock: product.stock + quantity)
  end

  def available_product(id)
    current_product(id).stock >= 5
  end

  def current_product(id)
    Product.find_by(id: id)
  end
end
