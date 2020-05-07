class CartItem < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :quantity, presence: true, numericality: true

  def save_or_update_cart_item
    item = self
    # USE THIS IF item=self DOESN'T WORK: cart_item = CartLineItem.find_by(user_id: self.user_id, product_id: self.product_id)
    cart_item = CartLineItem.find_by(user_id: item.user.id, product_id: item.product.id)
    if cart_item.nil?
      item.save
    else
      cart_item.update_attributes(quantity: cart_item.quantity + item.quantity)
    end
  end
end
