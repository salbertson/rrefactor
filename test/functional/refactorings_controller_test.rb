require 'test_helper'

class RefactoringsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Refactoring.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Refactoring.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Refactoring.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to refactoring_url(assigns(:refactoring))
  end
  
  def test_edit
    get :edit, :id => Refactoring.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Refactoring.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Refactoring.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Refactoring.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Refactoring.first
    assert_redirected_to refactoring_url(assigns(:refactoring))
  end
  
  def test_destroy
    refactoring = Refactoring.first
    delete :destroy, :id => refactoring
    assert_redirected_to refactorings_url
    assert !Refactoring.exists?(refactoring.id)
  end
end
