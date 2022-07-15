require "application_system_test_case"

class TransformationalsTest < ApplicationSystemTestCase
  setup do
    @transformational = transformationals(:one)
  end

  test "visiting the index" do
    visit transformationals_url
    assert_selector "h1", text: "Transformationals"
  end

  test "should create transformational" do
    visit transformationals_url
    click_on "New transformational"

    fill_in "Answers", with: @transformational.answers
    fill_in "Answers10", with: @transformational.answers10
    fill_in "Answers2", with: @transformational.answers2
    fill_in "Answers3", with: @transformational.answers3
    fill_in "Answers4", with: @transformational.answers4
    fill_in "Answers5", with: @transformational.answers5
    fill_in "Answers6", with: @transformational.answers6
    fill_in "Answers7", with: @transformational.answers7
    fill_in "Answers8", with: @transformational.answers8
    fill_in "Answers9", with: @transformational.answers9
    fill_in "User", with: @transformational.user_id
    click_on "Create Transformational"

    assert_text "Transformational was successfully created"
    click_on "Back"
  end

  test "should update Transformational" do
    visit transformational_url(@transformational)
    click_on "Edit this transformational", match: :first

    fill_in "Answers", with: @transformational.answers
    fill_in "Answers10", with: @transformational.answers10
    fill_in "Answers2", with: @transformational.answers2
    fill_in "Answers3", with: @transformational.answers3
    fill_in "Answers4", with: @transformational.answers4
    fill_in "Answers5", with: @transformational.answers5
    fill_in "Answers6", with: @transformational.answers6
    fill_in "Answers7", with: @transformational.answers7
    fill_in "Answers8", with: @transformational.answers8
    fill_in "Answers9", with: @transformational.answers9
    fill_in "User", with: @transformational.user_id
    click_on "Update Transformational"

    assert_text "Transformational was successfully updated"
    click_on "Back"
  end

  test "should destroy Transformational" do
    visit transformational_url(@transformational)
    click_on "Destroy this transformational", match: :first

    assert_text "Transformational was successfully destroyed"
  end
end
