require "application_system_test_case"

class SomecodingsTest < ApplicationSystemTestCase
  setup do
    @somecoding = somecodings(:one)
  end

  test "visiting the index" do
    visit somecodings_url
    assert_selector "h1", text: "Somecodings"
  end

  test "should create somecoding" do
    visit somecodings_url
    click_on "New somecoding"

    fill_in "Coding", with: @somecoding.coding_id
    fill_in "Name", with: @somecoding.name
    fill_in "Pic", with: @somecoding.pic
    click_on "Create Somecoding"

    assert_text "Somecoding was successfully created"
    click_on "Back"
  end

  test "should update Somecoding" do
    visit somecoding_url(@somecoding)
    click_on "Edit this somecoding", match: :first

    fill_in "Coding", with: @somecoding.coding_id
    fill_in "Name", with: @somecoding.name
    fill_in "Pic", with: @somecoding.pic
    click_on "Update Somecoding"

    assert_text "Somecoding was successfully updated"
    click_on "Back"
  end

  test "should destroy Somecoding" do
    visit somecoding_url(@somecoding)
    click_on "Destroy this somecoding", match: :first

    assert_text "Somecoding was successfully destroyed"
  end
end
