require "application_system_test_case"

class MytutoriallistsTest < ApplicationSystemTestCase
  setup do
    @mytutoriallist = mytutoriallists(:one)
  end

  test "visiting the index" do
    visit mytutoriallists_url
    assert_selector "h1", text: "Mytutoriallists"
  end

  test "should create mytutoriallist" do
    visit mytutoriallists_url
    click_on "New mytutoriallist"

    fill_in "Mytutorial", with: @mytutoriallist.mytutorial_id
    fill_in "Name", with: @mytutoriallist.name
    click_on "Create Mytutoriallist"

    assert_text "Mytutoriallist was successfully created"
    click_on "Back"
  end

  test "should update Mytutoriallist" do
    visit mytutoriallist_url(@mytutoriallist)
    click_on "Edit this mytutoriallist", match: :first

    fill_in "Mytutorial", with: @mytutoriallist.mytutorial_id
    fill_in "Name", with: @mytutoriallist.name
    click_on "Update Mytutoriallist"

    assert_text "Mytutoriallist was successfully updated"
    click_on "Back"
  end

  test "should destroy Mytutoriallist" do
    visit mytutoriallist_url(@mytutoriallist)
    click_on "Destroy this mytutoriallist", match: :first

    assert_text "Mytutoriallist was successfully destroyed"
  end
end
