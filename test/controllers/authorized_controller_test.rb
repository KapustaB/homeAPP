require 'test_helper'

class AuthorizedControllerTest < ActionDispatch::IntegrationTest
  test "should get authenticate_device_from_auth_token" do
    get authorized_authenticate_device_from_auth_token_url
    assert_response :success
  end

end
