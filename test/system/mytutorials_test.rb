require "application_system_test_case"

class MytutorialsTest < ApplicationSystemTestCase
  setup do
    @mytutorial = mytutorials(:one)
  end

  test "visiting the index" do
    visit mytutorials_url
    assert_selector "h1", text: "Mytutorials"
  end

  test "should create mytutorial" do
    visit mytutorials_url
    click_on "New mytutorial"

    fill_in "Description", with: @mytutorial.description
    fill_in "Name", with: @mytutorial.name
    fill_in "Pic", with: @mytutorial.pic
    click_on "Create Mytutorial"

    assert_text "Mytutorial was successfully created"
    click_on "Back"
  end

  test "should update Mytutorial" do
    visit mytutorial_url(@mytutorial)
    click_on "Edit this mytutorial", match: :first

    fill_in "Description", with: @mytutorial.description
    fill_in "Name", with: @mytutorial.name
    fill_in "Pic", with: @mytutorial.pic
    click_on "Update Mytutorial"

    assert_text "Mytutorial was successfully updated"
    click_on "Back"
  end

  test "should destroy Mytutorial" do
    visit mytutorial_url(@mytutorial)
    click_on "Destroy this mytutorial", match: :first

    assert_text "Mytutorial was successfully destroyed"
  end
end
