require 'test_helper'

class RefactoringTest < ActiveSupport::TestCase
  fixtures :refactorings

  def setup
    @refactoring = refactorings(:valid)
  end

  test "should have code" do
    @refactoring.code = nil
    assert !@refactoring.valid?
  end

  test "should be associated with a user" do
    @refactoring.user = nil
    assert !@refactoring.valid?
  end

  test "should be associated with a post" do
    @refactoring.post = nil
    assert !@refactoring.valid?
  end
end
