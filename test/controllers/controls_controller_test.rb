require 'test_helper'

class ControlsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get controls_index_url
    assert_response :success
  end

end
