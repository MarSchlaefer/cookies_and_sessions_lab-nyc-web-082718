class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_cart
    session[:cart] ||= []
  end

  def cart
    session[:cart] = current_cart
    current_cart
  end

end
