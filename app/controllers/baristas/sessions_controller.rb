module Baristas
  class SessionsController < Devise::SessionsController
    respond_to :html, :json

    def signed_in_barista
      render json: current_barista
    end
  end
end