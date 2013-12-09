class OrdersController < ApplicationController
  respond_to :html, :json

  def index
    if params[:status]
      all = Order.where(status: params[:status])
    else
      all = Order.all
    end
    respond_with all
  end

  def create
    order = Order.new(order_params)
    if order.save
      respond_to do |format|
        format.html {redirect_to orders_path}
        format.json do
          begin
            Pusher.trigger('orders_channel', 'order_created', order.to_json)
          rescue Pusher::Error => e
            Rails.logger.error(e.to_s)
            Rails.logger.error(e.backtrace.join("\n"))
          end
          head :ok
        end
      end
    else
      respond_to do |format|
        format.html {render new_order_path}
        format.json {render json: order}
      end
    end
  end

  def update
    order = Order.find(params[:id])
    if order.update_attributes(order_params)
      respond_to do |format|
        format.html {redirect_to orders_path}
        format.json do
          begin
            Pusher.trigger('orders_channel', 'order_created', order.to_json)
          rescue Pusher::Error => e
            Rails.logger.error(e.to_s)
            Rails.logger.error(e.backtrace.join("\n"))
          end
          head :ok
        end
      end
    else
      respond_to do |format|
        format.html {render new_order_path}
        format.json {render json: order}
      end
    end
  end

  def show
    respond_with Order.find(params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:customer_name, :product_id, :product_option_id, :status)
  end
end
