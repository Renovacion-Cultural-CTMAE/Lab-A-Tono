require "test_helper"

class RelationalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relational = relationals(:one)
  end

  test "should get index" do
    get relationals_url
    assert_response :success
  end

  test "should get new" do
    get new_relational_url
    assert_response :success
  end

  test "should create relational" do
    assert_difference("Relational.count") do
      post relationals_url, params: { relational: { answers: @relational.answers, answers10: @relational.answers10, answers2: @relational.answers2, answers3: @relational.answers3, answers4: @relational.answers4, answers5: @relational.answers5, answers6: @relational.answers6, answers7: @relational.answers7, answers8: @relational.answers8, answers9: @relational.answers9, user_id: @relational.user_id } }
    end

    assert_redirected_to relational_url(Relational.last)
  end

  test "should show relational" do
    get relational_url(@relational)
    assert_response :success
  end

  test "should get edit" do
    get edit_relational_url(@relational)
    assert_response :success
  end

  test "should update relational" do
    patch relational_url(@relational), params: { relational: { answers: @relational.answers, answers10: @relational.answers10, answers2: @relational.answers2, answers3: @relational.answers3, answers4: @relational.answers4, answers5: @relational.answers5, answers6: @relational.answers6, answers7: @relational.answers7, answers8: @relational.answers8, answers9: @relational.answers9, user_id: @relational.user_id } }
    assert_redirected_to relational_url(@relational)
  end

  test "should destroy relational" do
    assert_difference("Relational.count", -1) do
      delete relational_url(@relational)
    end

    assert_redirected_to relationals_url
  end
end
