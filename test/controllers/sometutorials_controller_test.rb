require "test_helper"

class SometutorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sometutorial = sometutorials(:one)
  end

  test "should get index" do
    get sometutorials_url
    assert_response :success
  end

  test "should get new" do
    get new_sometutorial_url
    assert_response :success
  end

  test "should create sometutorial" do
    assert_difference("Sometutorial.count") do
      post sometutorials_url, params: { sometutorial: { description: @sometutorial.description, mytutorial_id: @sometutorial.mytutorial_id, title: @sometutorial.title } }
    end

    assert_redirected_to sometutorial_url(Sometutorial.last)
  end

  test "should show sometutorial" do
    get sometutorial_url(@sometutorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_sometutorial_url(@sometutorial)
    assert_response :success
  end

  test "should update sometutorial" do
    patch sometutorial_url(@sometutorial), params: { sometutorial: { description: @sometutorial.description, mytutorial_id: @sometutorial.mytutorial_id, title: @sometutorial.title } }
    assert_redirected_to sometutorial_url(@sometutorial)
  end

  test "should destroy sometutorial" do
    assert_difference("Sometutorial.count", -1) do
      delete sometutorial_url(@sometutorial)
    end

    assert_redirected_to sometutorials_url
  end
end
