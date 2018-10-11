class OrderDetailsController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    @order_detail = OrderDetail.new
    @order_detail.product_sku = product.sku
    @order_detail
  end

end
