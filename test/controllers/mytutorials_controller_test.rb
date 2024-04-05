require "test_helper"

class MytutorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytutorial = mytutorials(:one)
  end

  test "should get index" do
    get mytutorials_url
    assert_response :success
  end

  test "should get new" do
    get new_mytutorial_url
    assert_response :success
  end

  test "should create mytutorial" do
    assert_difference("Mytutorial.count") do
      post mytutorials_url, params: { mytutorial: { description: @mytutorial.description, name: @mytutorial.name, pic: @mytutorial.pic } }
    end

    assert_redirected_to mytutorial_url(Mytutorial.last)
  end

  test "should show mytutorial" do
    get mytutorial_url(@mytutorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytutorial_url(@mytutorial)
    assert_response :success
  end

  test "should update mytutorial" do
    patch mytutorial_url(@mytutorial), params: { mytutorial: { description: @mytutorial.description, name: @mytutorial.name, pic: @mytutorial.pic } }
    assert_redirected_to mytutorial_url(@mytutorial)
  end

  test "should destroy mytutorial" do
    assert_difference("Mytutorial.count", -1) do
      delete mytutorial_url(@mytutorial)
    end

    assert_redirected_to mytutorials_url
  end
end
