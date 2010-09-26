require 'test_helper'

class RefactoringTest < ActiveSupport::TestCase
  fixtures :refactorings

  def setup
    @refactoring = refactorings(:valid)
  end

  test "should have a description" do
    @refactoring.description = nil
    assert !@refactoring.valid?
  end

  test "should have code" do
    @refactoring.code = nil
    assert !@refactoring.valid?
  end

  test "should be associated with a user" do
    @refactoring.user = nil
    assert !@refactoring.valid?
  end

  test "shoudl be associated with a post" do
    @refactoring.post = nil
    assert !@refactoring.valid?
  end

  test "should have appropriate length description" do
    @refactoring.description = "a" * 900
    assert @refactoring.valid?

    @refactoring.description = "a" * 2_000
    assert !@refactoring.valid?
  end

  test "should have appropriate length code" do
    @refactoring.code = "a" * 9_000
    assert @refactoring.valid?

    @refactoring.description = "a" * 12_000
    assert !@refactoring.valid?
  end
end
