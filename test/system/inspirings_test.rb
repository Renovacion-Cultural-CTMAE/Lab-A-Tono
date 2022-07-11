require "application_system_test_case"

class InspiringsTest < ApplicationSystemTestCase
  setup do
    @inspiring = inspirings(:one)
  end

  test "visiting the index" do
    visit inspirings_url
    assert_selector "h1", text: "Inspirings"
  end

  test "should create inspiring" do
    visit inspirings_url
    click_on "New inspiring"

    fill_in "Answers", with: @inspiring.answers
    fill_in "User", with: @inspiring.user_id
    click_on "Create Inspiring"

    assert_text "Inspiring was successfully created"
    click_on "Back"
  end

  test "should update Inspiring" do
    visit inspiring_url(@inspiring)
    click_on "Edit this inspiring", match: :first

    fill_in "Answers", with: @inspiring.answers
    fill_in "User", with: @inspiring.user_id
    click_on "Update Inspiring"

    assert_text "Inspiring was successfully updated"
    click_on "Back"
  end

  test "should destroy Inspiring" do
    visit inspiring_url(@inspiring)
    click_on "Destroy this inspiring", match: :first

    assert_text "Inspiring was successfully destroyed"
  end
end
