module Baristas
  class SessionsController < Devise::SessionsController
    respond_to :html, :json
  end
end