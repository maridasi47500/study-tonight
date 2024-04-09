require "test_helper"

class SomecodingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @somecoding = somecodings(:one)
  end

  test "should get index" do
    get somecodings_url
    assert_response :success
  end

  test "should get new" do
    get new_somecoding_url
    assert_response :success
  end

  test "should create somecoding" do
    assert_difference("Somecoding.count") do
      post somecodings_url, params: { somecoding: { coding_id: @somecoding.coding_id, name: @somecoding.name, pic: @somecoding.pic } }
    end

    assert_redirected_to somecoding_url(Somecoding.last)
  end

  test "should show somecoding" do
    get somecoding_url(@somecoding)
    assert_response :success
  end

  test "should get edit" do
    get edit_somecoding_url(@somecoding)
    assert_response :success
  end

  test "should update somecoding" do
    patch somecoding_url(@somecoding), params: { somecoding: { coding_id: @somecoding.coding_id, name: @somecoding.name, pic: @somecoding.pic } }
    assert_redirected_to somecoding_url(@somecoding)
  end

  test "should destroy somecoding" do
    assert_difference("Somecoding.count", -1) do
      delete somecoding_url(@somecoding)
    end

    assert_redirected_to somecodings_url
  end
end
