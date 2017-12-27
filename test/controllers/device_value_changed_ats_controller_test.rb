require 'test_helper'

class DeviceValueChangedAtsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get device_value_changed_ats_new_url
    assert_response :success
  end

  test "should get delete" do
    get device_value_changed_ats_delete_url
    assert_response :success
  end

  test "should get update" do
    get device_value_changed_ats_update_url
    assert_response :success
  end

  test "should get index" do
    get device_value_changed_ats_index_url
    assert_response :success
  end

end
