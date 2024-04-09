require "test_helper"

class CodingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coding = codings(:one)
  end

  test "should get index" do
    get codings_url
    assert_response :success
  end

  test "should get new" do
    get new_coding_url
    assert_response :success
  end

  test "should create coding" do
    assert_difference("Coding.count") do
      post codings_url, params: { coding: { description: @coding.description, name: @coding.name, pic: @coding.pic, programminglanguage_id: @coding.programminglanguage_id } }
    end

    assert_redirected_to coding_url(Coding.last)
  end

  test "should show coding" do
    get coding_url(@coding)
    assert_response :success
  end

  test "should get edit" do
    get edit_coding_url(@coding)
    assert_response :success
  end

  test "should update coding" do
    patch coding_url(@coding), params: { coding: { description: @coding.description, name: @coding.name, pic: @coding.pic, programminglanguage_id: @coding.programminglanguage_id } }
    assert_redirected_to coding_url(@coding)
  end

  test "should destroy coding" do
    assert_difference("Coding.count", -1) do
      delete coding_url(@coding)
    end

    assert_redirected_to codings_url
  end
end
