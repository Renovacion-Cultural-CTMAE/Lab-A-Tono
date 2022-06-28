require "test_helper"

class SobrenosotrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sobrenosotros_index_url
    assert_response :success
  end
end
