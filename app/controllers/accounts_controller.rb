class AccountsController < ApplicationController

  def dashboard
    @order = current_user.orders.where(:status == 1)
    authorize @account
  end
end
