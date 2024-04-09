require "application_system_test_case"

class AnycodingsTest < ApplicationSystemTestCase
  setup do
    @anycoding = anycodings(:one)
  end

  test "visiting the index" do
    visit anycodings_url
    assert_selector "h1", text: "Anycodings"
  end

  test "should create anycoding" do
    visit anycodings_url
    click_on "New anycoding"

    fill_in "Code", with: @anycoding.code
    fill_in "Content", with: @anycoding.content
    fill_in "Name", with: @anycoding.name
    fill_in "Somecoding", with: @anycoding.somecoding_id
    click_on "Create Anycoding"

    assert_text "Anycoding was successfully created"
    click_on "Back"
  end

  test "should update Anycoding" do
    visit anycoding_url(@anycoding)
    click_on "Edit this anycoding", match: :first

    fill_in "Code", with: @anycoding.code
    fill_in "Content", with: @anycoding.content
    fill_in "Name", with: @anycoding.name
    fill_in "Somecoding", with: @anycoding.somecoding_id
    click_on "Update Anycoding"

    assert_text "Anycoding was successfully updated"
    click_on "Back"
  end

  test "should destroy Anycoding" do
    visit anycoding_url(@anycoding)
    click_on "Destroy this anycoding", match: :first

    assert_text "Anycoding was successfully destroyed"
  end
end
