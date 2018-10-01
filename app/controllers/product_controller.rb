class ProductsController < ApplicationController
  def index
    @cart = current_cart
  end

  def add
    current_cart << params[:product]
    session[:cart] = current_cart
    @cart = current_cart
    render :index
  end
end
