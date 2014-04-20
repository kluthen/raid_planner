require 'test_helper'

class RequiredsControllerTest < ActionController::TestCase
  setup do
    @required = requireds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requireds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create required" do
    assert_difference('Required.count') do
      post :create, required: { event_id: @required.event_id, event_template_id: @required.event_template_id, role_id: @required.role_id }
    end

    assert_redirected_to required_path(assigns(:required))
  end

  test "should show required" do
    get :show, id: @required
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @required
    assert_response :success
  end

  test "should update required" do
    patch :update, id: @required, required: { event_id: @required.event_id, event_template_id: @required.event_template_id, role_id: @required.role_id }
    assert_redirected_to required_path(assigns(:required))
  end

  test "should destroy required" do
    assert_difference('Required.count', -1) do
      delete :destroy, id: @required
    end

    assert_redirected_to requireds_path
  end
end
