class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :update, :edit]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    @product.save
  end

  def edit
  end

  def update
    if @product.update(params_product)
      redirect_to
    else
      render :edit
    end
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def params_product
    params.require(:product).permit(:sku, :name, :description, :detailtechniques, :price_cents)
  end

end
