module Baristas
  class RegistrationsController < Devise::RegistrationsController
    respond_to :html, :json
  end
end