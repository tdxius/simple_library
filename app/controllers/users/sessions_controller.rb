# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  layout 'auth'
  before_action :configure_sign_in_params, only: [:create]

  def new
    super
  end

  def create
    super
  end

  def destroy
    super
  end

  protected

  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:user, keys: [:email, :password])
  end
end
