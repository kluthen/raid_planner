class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

  def is_admin?
  	unless user_signed_in? and current_user.is_admin
      redirect_to :back, alert: "Vous devez etre administrateur pour acceder a cette page."
    end
  end

  def user_is_logged?
    unless user_signed_in?
      redirect_to :back, alert: "Vous devez etre authentifier pour acceder a cette page."
    end
  end
end
