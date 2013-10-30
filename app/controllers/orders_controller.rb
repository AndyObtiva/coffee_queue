class OrdersController < ApplicationController
  respond_to :html, :json

  def index
    respond_with Order.all
  end

  def new

  end

  def create
    order = Order.new(order_params)
    if order.save
      respond_to do |format|
        format.html {redirect_to orders_path}
        format.json {head :ok}
      end
    else
      respond_to do |format|
        format.html {render new_order_path}
        format.json {render json: order}
      end
    end
  end


  private
  def order_params
    params.require(:order).permit(:customer_name)
  end
end
