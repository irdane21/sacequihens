class OrdersController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    order  = Order.new(product_sku: product.sku, amount: product.price, status: 1, user: current_user)
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to combi_path(@combi)
    end
    # redirect_to new_order_payment_path(order)
  end

end
