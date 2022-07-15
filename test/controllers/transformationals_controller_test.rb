require "test_helper"

class TransformationalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transformational = transformationals(:one)
  end

  test "should get index" do
    get transformationals_url
    assert_response :success
  end

  test "should get new" do
    get new_transformational_url
    assert_response :success
  end

  test "should create transformational" do
    assert_difference("Transformational.count") do
      post transformationals_url, params: { transformational: { answers: @transformational.answers, answers10: @transformational.answers10, answers2: @transformational.answers2, answers3: @transformational.answers3, answers4: @transformational.answers4, answers5: @transformational.answers5, answers6: @transformational.answers6, answers7: @transformational.answers7, answers8: @transformational.answers8, answers9: @transformational.answers9, user_id: @transformational.user_id } }
    end

    assert_redirected_to transformational_url(Transformational.last)
  end

  test "should show transformational" do
    get transformational_url(@transformational)
    assert_response :success
  end

  test "should get edit" do
    get edit_transformational_url(@transformational)
    assert_response :success
  end

  test "should update transformational" do
    patch transformational_url(@transformational), params: { transformational: { answers: @transformational.answers, answers10: @transformational.answers10, answers2: @transformational.answers2, answers3: @transformational.answers3, answers4: @transformational.answers4, answers5: @transformational.answers5, answers6: @transformational.answers6, answers7: @transformational.answers7, answers8: @transformational.answers8, answers9: @transformational.answers9, user_id: @transformational.user_id } }
    assert_redirected_to transformational_url(@transformational)
  end

  test "should destroy transformational" do
    assert_difference("Transformational.count", -1) do
      delete transformational_url(@transformational)
    end

    assert_redirected_to transformationals_url
  end
end
