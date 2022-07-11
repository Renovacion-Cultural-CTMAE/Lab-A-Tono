require "test_helper"

class InspiringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspiring = inspirings(:one)
  end

  test "should get index" do
    get inspirings_url
    assert_response :success
  end

  test "should get new" do
    get new_inspiring_url
    assert_response :success
  end

  test "should create inspiring" do
    assert_difference("Inspiring.count") do
      post inspirings_url, params: { inspiring: { answers: @inspiring.answers, user_id: @inspiring.user_id } }
    end

    assert_redirected_to inspiring_url(Inspiring.last)
  end

  test "should show inspiring" do
    get inspiring_url(@inspiring)
    assert_response :success
  end

  test "should get edit" do
    get edit_inspiring_url(@inspiring)
    assert_response :success
  end

  test "should update inspiring" do
    patch inspiring_url(@inspiring), params: { inspiring: { answers: @inspiring.answers, user_id: @inspiring.user_id } }
    assert_redirected_to inspiring_url(@inspiring)
  end

  test "should destroy inspiring" do
    assert_difference("Inspiring.count", -1) do
      delete inspiring_url(@inspiring)
    end

    assert_redirected_to inspirings_url
  end
end
