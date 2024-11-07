require "test_helper"

class TokoLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toko_logs_index_url
    assert_response :success
  end
end
