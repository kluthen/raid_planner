require 'test_helper'

class PartipipatingsControllerTest < ActionController::TestCase
  setup do
    @partipipating = partipipatings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partipipatings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partipipating" do
    assert_difference('Partipipating.count') do
      post :create, partipipating: { character_id: @partipipating.character_id, comment: @partipipating.comment, pickup_id: @partipipating.pickup_id, role_id: @partipipating.role_id }
    end

    assert_redirected_to partipipating_path(assigns(:partipipating))
  end

  test "should show partipipating" do
    get :show, id: @partipipating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partipipating
    assert_response :success
  end

  test "should update partipipating" do
    patch :update, id: @partipipating, partipipating: { character_id: @partipipating.character_id, comment: @partipipating.comment, pickup_id: @partipipating.pickup_id, role_id: @partipipating.role_id }
    assert_redirected_to partipipating_path(assigns(:partipipating))
  end

  test "should destroy partipipating" do
    assert_difference('Partipipating.count', -1) do
      delete :destroy, id: @partipipating
    end

    assert_redirected_to partipipatings_path
  end
end
