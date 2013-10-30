class ProductsController < ApplicationController
  respond_to :html, :json

  def index
    respond_with Product.all
  end

  def show
    respond_with Product.find(params[:id])
  end
end
