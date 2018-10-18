class SessionsController < ApplicationController
  attr_reader :session_id
  attr_accessor :data

  def create
    session[:current_user_id] = @user.id
  end
end
