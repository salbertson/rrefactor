require 'test_helper'

class RefactoringTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Refactoring.new.valid?
  end
end
