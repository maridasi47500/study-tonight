require "test_helper"

class AnycodingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anycoding = anycodings(:one)
  end

  test "should get index" do
    get anycodings_url
    assert_response :success
  end

  test "should get new" do
    get new_anycoding_url
    assert_response :success
  end

  test "should create anycoding" do
    assert_difference("Anycoding.count") do
      post anycodings_url, params: { anycoding: { code: @anycoding.code, content: @anycoding.content, name: @anycoding.name, somecoding_id: @anycoding.somecoding_id } }
    end

    assert_redirected_to anycoding_url(Anycoding.last)
  end

  test "should show anycoding" do
    get anycoding_url(@anycoding)
    assert_response :success
  end

  test "should get edit" do
    get edit_anycoding_url(@anycoding)
    assert_response :success
  end

  test "should update anycoding" do
    patch anycoding_url(@anycoding), params: { anycoding: { code: @anycoding.code, content: @anycoding.content, name: @anycoding.name, somecoding_id: @anycoding.somecoding_id } }
    assert_redirected_to anycoding_url(@anycoding)
  end

  test "should destroy anycoding" do
    assert_difference("Anycoding.count", -1) do
      delete anycoding_url(@anycoding)
    end

    assert_redirected_to anycodings_url
  end
end
