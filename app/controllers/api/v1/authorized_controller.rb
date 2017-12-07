module Api
  module V1
    class AuthorizedController < ApiController
      include Devise::Controllers::Helpers

      before_action :authenticate_user_from_auth_token!

      private

      def authenticate_device_from_auth_token!
        @device = authenticate_with_http_token do |token, options|
          @device = Device.find(id: options['identifier'])
          @device if Device.secure_compare(token, @device.token) unless @device.blank?
        end

        (respond_with_error(401, I18n.t('controllers.api.v1.authorized.auth_error')) and return) if user.blank?
      end
    end
  end
end




