require 'test_helper'

class CharacterSpecialisationsControllerTest < ActionController::TestCase
  setup do
    @character_specialisation = character_specialisations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_specialisations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_specialisation" do
    assert_difference('CharacterSpecialisation.count') do
      post :create, character_specialisation: { character_id: @character_specialisation.character_id, comment: @character_specialisation.comment, ordered: @character_specialisation.ordered, role_type_id: @character_specialisation.role_type_id }
    end

    assert_redirected_to character_specialisation_path(assigns(:character_specialisation))
  end

  test "should show character_specialisation" do
    get :show, id: @character_specialisation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_specialisation
    assert_response :success
  end

  test "should update character_specialisation" do
    patch :update, id: @character_specialisation, character_specialisation: { character_id: @character_specialisation.character_id, comment: @character_specialisation.comment, ordered: @character_specialisation.ordered, role_type_id: @character_specialisation.role_type_id }
    assert_redirected_to character_specialisation_path(assigns(:character_specialisation))
  end

  test "should destroy character_specialisation" do
    assert_difference('CharacterSpecialisation.count', -1) do
      delete :destroy, id: @character_specialisation
    end

    assert_redirected_to character_specialisations_path
  end
end
