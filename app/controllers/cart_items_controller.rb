class CartItemsController < ApplicationController
  def cart
    @cart_items = current_user.cart_items
  end

  def create
    @cart_item = CartLineItem.new(cart_item_params)
    @cart_item.user_id = current_user.id
    @cart_item.save_or_update_cart_item
    redirect_to cart_items_path, notice: 'Added item to cart'
  end

  def destroy
    @cart_item = CartLineItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path, notice: 'Removed item from cart'
  end

  private

  def cart_item_params
    params[:cart_item].permit(:quantity, :product_id)
  end
end
