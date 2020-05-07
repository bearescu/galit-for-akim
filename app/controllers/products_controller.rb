class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    find_product
    # @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to product_path(@product)
  end

  def edit
    find_product
    # @product = Product.find(params[:id])
  end

  def update
    find_product
    # @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    find_product
    # @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
