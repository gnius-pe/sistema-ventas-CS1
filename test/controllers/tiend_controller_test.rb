require "test_helper"

class TiendControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tiend_index_url
    assert_response :success
  end
end
