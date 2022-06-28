require "test_helper"

class RenovacioncControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get renovacionc_index_url
    assert_response :success
  end
end
