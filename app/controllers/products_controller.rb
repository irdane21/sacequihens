class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :update, :edit]

  def index
    @products = policy_scope(Product)
  end

  def show
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(params_product)
    authorize @product
    if @product.save
      redirect_to dashboard_path(current_user)
    else
      render :new
    end
  end

  def edit
    authorize @product
  end

  def update
    authorize @product
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
