require 'test_helper'

class Users::InvitationsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get users_invitations_controller_create_url
    assert_response :success
  end

end
