require "test_helper"

class MytutoriallistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytutoriallist = mytutoriallists(:one)
  end

  test "should get index" do
    get mytutoriallists_url
    assert_response :success
  end

  test "should get new" do
    get new_mytutoriallist_url
    assert_response :success
  end

  test "should create mytutoriallist" do
    assert_difference("Mytutoriallist.count") do
      post mytutoriallists_url, params: { mytutoriallist: { mytutorial_id: @mytutoriallist.mytutorial_id, name: @mytutoriallist.name } }
    end

    assert_redirected_to mytutoriallist_url(Mytutoriallist.last)
  end

  test "should show mytutoriallist" do
    get mytutoriallist_url(@mytutoriallist)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytutoriallist_url(@mytutoriallist)
    assert_response :success
  end

  test "should update mytutoriallist" do
    patch mytutoriallist_url(@mytutoriallist), params: { mytutoriallist: { mytutorial_id: @mytutoriallist.mytutorial_id, name: @mytutoriallist.name } }
    assert_redirected_to mytutoriallist_url(@mytutoriallist)
  end

  test "should destroy mytutoriallist" do
    assert_difference("Mytutoriallist.count", -1) do
      delete mytutoriallist_url(@mytutoriallist)
    end

    assert_redirected_to mytutoriallists_url
  end
end
