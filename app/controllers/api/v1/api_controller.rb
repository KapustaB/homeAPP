module Api
  module V1
    class ApiController < ApplicationController
      protect_from_forgery with: :null_session
      #skip_before_action :verify_authenticity_token, :authenticate_user! #Set this if user is being authorized in ApplicationController - DEVISE
      include Response
      include ExceptionHandler

    end
  end
end

