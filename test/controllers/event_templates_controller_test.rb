require 'test_helper'

class EventTemplatesControllerTest < ActionController::TestCase
  setup do
    @event_template = event_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_template" do
    assert_difference('EventTemplate.count') do
      post :create, event_template: { description: @event_template.description, name: @event_template.name, players_required: @event_template.players_required }
    end

    assert_redirected_to event_template_path(assigns(:event_template))
  end

  test "should show event_template" do
    get :show, id: @event_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_template
    assert_response :success
  end

  test "should update event_template" do
    patch :update, id: @event_template, event_template: { description: @event_template.description, name: @event_template.name, players_required: @event_template.players_required }
    assert_redirected_to event_template_path(assigns(:event_template))
  end

  test "should destroy event_template" do
    assert_difference('EventTemplate.count', -1) do
      delete :destroy, id: @event_template
    end

    assert_redirected_to event_templates_path
  end
end
