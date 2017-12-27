module Api
  module V1
    class AuthorizedController < ApiController
      include Devise::Controllers::Helpers

      before_action :authenticate_device_from_auth_token!

      private

      def authenticate_device_from_auth_token!
        @device = authenticate_with_http_token do |token, options|
          @device = Device.find(options['identifier'])
          @device if Devise.secure_compare(token, @device.token) unless @device.blank?
        end
        (respond_with_error(401, I18n.t('controllers.api.v1.authorized.auth_error')) and return) if @device.blank?
      end

      def set_floor
        @floor = @device.room.floor
      end

      def set_room
        @room = @device.room
      end

      def set_house
        @house = @device.room.floor.house
      end
    end
  end
end




