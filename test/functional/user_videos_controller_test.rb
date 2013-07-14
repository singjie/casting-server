require 'test_helper'

class UserVideosControllerTest < ActionController::TestCase
  setup do
    @user_video = user_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_video" do
    assert_difference('UserVideo.count') do
      post :create, user_video: {  }
    end

    assert_redirected_to user_video_path(assigns(:user_video))
  end

  test "should show user_video" do
    get :show, id: @user_video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_video
    assert_response :success
  end

  test "should update user_video" do
    put :update, id: @user_video, user_video: {  }
    assert_redirected_to user_video_path(assigns(:user_video))
  end

  test "should destroy user_video" do
    assert_difference('UserVideo.count', -1) do
      delete :destroy, id: @user_video
    end

    assert_redirected_to user_videos_path
  end
end
