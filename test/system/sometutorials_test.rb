require "application_system_test_case"

class SometutorialsTest < ApplicationSystemTestCase
  setup do
    @sometutorial = sometutorials(:one)
  end

  test "visiting the index" do
    visit sometutorials_url
    assert_selector "h1", text: "Sometutorials"
  end

  test "should create sometutorial" do
    visit sometutorials_url
    click_on "New sometutorial"

    fill_in "Description", with: @sometutorial.description
    fill_in "Mytutorial", with: @sometutorial.mytutorial_id
    fill_in "Title", with: @sometutorial.title
    click_on "Create Sometutorial"

    assert_text "Sometutorial was successfully created"
    click_on "Back"
  end

  test "should update Sometutorial" do
    visit sometutorial_url(@sometutorial)
    click_on "Edit this sometutorial", match: :first

    fill_in "Description", with: @sometutorial.description
    fill_in "Mytutorial", with: @sometutorial.mytutorial_id
    fill_in "Title", with: @sometutorial.title
    click_on "Update Sometutorial"

    assert_text "Sometutorial was successfully updated"
    click_on "Back"
  end

  test "should destroy Sometutorial" do
    visit sometutorial_url(@sometutorial)
    click_on "Destroy this sometutorial", match: :first

    assert_text "Sometutorial was successfully destroyed"
  end
end
