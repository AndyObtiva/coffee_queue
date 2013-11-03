class ProductOptionsController < ApplicationController
  respond_to :html, :json

  def index
    conditions = {}
    conditions.merge(product_id: params[:product_id]) if params[:product_id]
    respond_with ProductOption.where(conditions)
  end

  def show
    respond_with ProductOption.find(params[:id])
  end
end
