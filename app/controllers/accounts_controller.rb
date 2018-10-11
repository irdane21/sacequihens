class AccountsController < ApplicationController

  def dashboard
    authorize @account
  end
end
