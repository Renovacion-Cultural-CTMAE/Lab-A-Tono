require "application_system_test_case"

class RelationalsTest < ApplicationSystemTestCase
  setup do
    @relational = relationals(:one)
  end

  test "visiting the index" do
    visit relationals_url
    assert_selector "h1", text: "Relationals"
  end

  test "should create relational" do
    visit relationals_url
    click_on "New relational"

    fill_in "Answers", with: @relational.answers
    fill_in "Answers10", with: @relational.answers10
    fill_in "Answers2", with: @relational.answers2
    fill_in "Answers3", with: @relational.answers3
    fill_in "Answers4", with: @relational.answers4
    fill_in "Answers5", with: @relational.answers5
    fill_in "Answers6", with: @relational.answers6
    fill_in "Answers7", with: @relational.answers7
    fill_in "Answers8", with: @relational.answers8
    fill_in "Answers9", with: @relational.answers9
    fill_in "User", with: @relational.user_id
    click_on "Create Relational"

    assert_text "Relational was successfully created"
    click_on "Back"
  end

  test "should update Relational" do
    visit relational_url(@relational)
    click_on "Edit this relational", match: :first

    fill_in "Answers", with: @relational.answers
    fill_in "Answers10", with: @relational.answers10
    fill_in "Answers2", with: @relational.answers2
    fill_in "Answers3", with: @relational.answers3
    fill_in "Answers4", with: @relational.answers4
    fill_in "Answers5", with: @relational.answers5
    fill_in "Answers6", with: @relational.answers6
    fill_in "Answers7", with: @relational.answers7
    fill_in "Answers8", with: @relational.answers8
    fill_in "Answers9", with: @relational.answers9
    fill_in "User", with: @relational.user_id
    click_on "Update Relational"

    assert_text "Relational was successfully updated"
    click_on "Back"
  end

  test "should destroy Relational" do
    visit relational_url(@relational)
    click_on "Destroy this relational", match: :first

    assert_text "Relational was successfully destroyed"
  end
end
