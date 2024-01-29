require "test_helper"

class WankosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wankos_index_url
    assert_response :success
  end
end
