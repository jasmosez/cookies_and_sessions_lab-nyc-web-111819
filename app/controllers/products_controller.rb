class ProductsController < ApplicationController

  def index
    cart
  end

  def add
   byebug
    cart << params[:product]
 
    # Save the cart in the session.
    session[:cart] = cart

    redirect_to '/'
  end
end
