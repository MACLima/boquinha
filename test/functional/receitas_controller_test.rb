require 'test_helper'

class ReceitasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receitas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receita" do
    assert_difference('Receita.count') do
      post :create, :receita => { }
    end

    assert_redirected_to receita_path(assigns(:receita))
  end

  test "should show receita" do
    get :show, :id => receitas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => receitas(:one).to_param
    assert_response :success
  end

  test "should update receita" do
    put :update, :id => receitas(:one).to_param, :receita => { }
    assert_redirected_to receita_path(assigns(:receita))
  end

  test "should destroy receita" do
    assert_difference('Receita.count', -1) do
      delete :destroy, :id => receitas(:one).to_param
    end

    assert_redirected_to receitas_path
  end
end
