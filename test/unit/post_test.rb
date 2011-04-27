require 'test_helper'

class PostTest < ActiveSupport::TestCase
  fixtures :posts

  def setup
    @post = posts(:valid)
  end

  test "should have a an associated user" do
    @post.user = nil
    assert !@post.valid?
  end

  test "should have code" do
    @post.code = nil
    assert !@post.valid?
  end
end
