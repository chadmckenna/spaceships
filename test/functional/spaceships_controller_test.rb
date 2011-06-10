require 'test_helper'

class SpaceshipsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Spaceship.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Spaceship.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Spaceship.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to spaceship_url(assigns(:spaceship))
  end

  def test_edit
    get :edit, :id => Spaceship.first
    assert_template 'edit'
  end

  def test_update_invalid
    Spaceship.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Spaceship.first
    assert_template 'edit'
  end

  def test_update_valid
    Spaceship.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Spaceship.first
    assert_redirected_to spaceship_url(assigns(:spaceship))
  end

  def test_destroy
    spaceship = Spaceship.first
    delete :destroy, :id => spaceship
    assert_redirected_to spaceships_url
    assert !Spaceship.exists?(spaceship.id)
  end
end
