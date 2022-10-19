class CartsController < ApplicationController
  def show
    @cart = current_cart
    @total_balance = @cart.total_balance
  end
end
