require "application_system_test_case"

class CodingsTest < ApplicationSystemTestCase
  setup do
    @coding = codings(:one)
  end

  test "visiting the index" do
    visit codings_url
    assert_selector "h1", text: "Codings"
  end

  test "should create coding" do
    visit codings_url
    click_on "New coding"

    fill_in "Description", with: @coding.description
    fill_in "Name", with: @coding.name
    fill_in "Pic", with: @coding.pic
    fill_in "Programminglanguage", with: @coding.programminglanguage_id
    click_on "Create Coding"

    assert_text "Coding was successfully created"
    click_on "Back"
  end

  test "should update Coding" do
    visit coding_url(@coding)
    click_on "Edit this coding", match: :first

    fill_in "Description", with: @coding.description
    fill_in "Name", with: @coding.name
    fill_in "Pic", with: @coding.pic
    fill_in "Programminglanguage", with: @coding.programminglanguage_id
    click_on "Update Coding"

    assert_text "Coding was successfully updated"
    click_on "Back"
  end

  test "should destroy Coding" do
    visit coding_url(@coding)
    click_on "Destroy this coding", match: :first

    assert_text "Coding was successfully destroyed"
  end
end
