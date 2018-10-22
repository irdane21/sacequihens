class SessionsController < ApplicationController
  attr_reader :session_id
  attr_accessor :data

  def initialize(hash_of_session_id_and_data, options_hash = {})
  end

  def create
    @session[:current_user_id] = @user.id
  end

  def find_by_session_id(session_id)
    self.find_by_session_id(session_id)
  end

  def save
  end

  def destroy
  end
end
