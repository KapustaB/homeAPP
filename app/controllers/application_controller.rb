require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_user_houses
  protected

  def configure_permitted_parameters
    added_attrs = [:first_name,:last_name, :nickname, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :accept_invitation, keys: added_attrs
  end

  # first jer ima vise kuca za daljnje funkcionalnosti
  def set_user_houses
   # @house = current_user.houses.first
  end
end
