require 'test_helper'

class ParticipatingsControllerTest < ActionController::TestCase
  setup do
    @participating = participatings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participatings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participating" do
    assert_difference('Participating.count') do
      post :create, participating: { character_id: @participating.character_id, comment: @participating.comment, pickup_id: @participating.pickup_id, role_id: @participating.role_id }
    end

    assert_redirected_to participating_path(assigns(:participating))
  end

  test "should show participating" do
    get :show, id: @participating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participating
    assert_response :success
  end

  test "should update participating" do
    patch :update, id: @participating, participating: { character_id: @participating.character_id, comment: @participating.comment, pickup_id: @participating.pickup_id, role_id: @participating.role_id }
    assert_redirected_to participating_path(assigns(:participating))
  end

  test "should destroy participating" do
    assert_difference('Participating.count', -1) do
      delete :destroy, id: @participating
    end

    assert_redirected_to participatings_path
  end
end
