class OrderDetailsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @order_detail = OrderDetail.new
    raise

    if session[:current_user_id]
      @order = session[:current_user_id].orders.where(:status == 1)
      @order_detail.product_sku = @product.sku
      @order_detail.product_id = @product.id
      @order.detail.quantity = params[:quantity]
      @order.detail.order_id = @order.id
      @order.detail.price_each_cents = @product.price_cents
      authorize @order_detail

      if @order_detail.save
        redirect_to dashboard_path
      else
        redirect_to product_path(@product)
      end

    else

      @order  = Order.new(amount_cents: @product.price, status: 1, user: current_user)
      authorize @order

      if @order.save
        @order_detail.product_sku = @product.sku
        @order_detail.product_id = @product.id
        @order.detail.quantity = params[:quantity]
        @order.detail.order_id = @order.id
        @order.detail.price_each_cents = @product.price_cents
        authorize @order_detail

        if @order_detail.save
          redirect_to dashboard_path
        else
          redirect_to product_path(@product)
        end
      else
        redirect_to product_path(@product)
      end
    end
  end

end
