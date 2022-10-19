class CartItemsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @cart_item = CartItem.new
  end
  
  def create
    @product = Product.find(params[:cart_item][:product_id])
    @cart_item = CartItem.new(qty: params[:cart_item][:qty], product_id: params[:cart_item][:product_id], cart_id: params[:cart_item][:cart_id])
    if @cart_item.save!
      flash[:notice] = '商品をカートに追加しました'
      redirect_to current_cart
    else
      flash[:notice] = '商品をカートに追加できませんでした'
      render 'new'
    end
  end
  
  def destroy
    @cart_item = CartItem.find(params[:id])
    if @cart_item.destroy
      flash[:notice] = '商品をカートから削除しました'
    else
      flash[:notice] = '商品をカートから削除できませんでした'
    end
    redirect_to current_cart
  end
end
