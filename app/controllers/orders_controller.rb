class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: curretn_user.id)
    render :index
  end

  def create
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    @order.save
    render :show
  end
end
