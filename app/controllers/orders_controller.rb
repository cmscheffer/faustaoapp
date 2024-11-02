class OrdersController < ApplicationController
  # before_action :set_order, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @orders = Order.where(user: current_user)

  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      redirect_to organs_path, notice: 'Organ was successfully created.'
    end
  end

  def my_orders
    @my_orders = Order.where(user: current_user)
  end

  private

  def order_params
    params.require(:order).permit(:organ_id)
  end
end
