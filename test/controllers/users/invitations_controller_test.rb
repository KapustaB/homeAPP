require 'test_helper'

class Users::InvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get users_invitations_create_url
    assert_response :success
  end

end
