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

  test "should have a description" do
    @post.description = nil
    assert !@post.valid?
  end

  test "should have code" do
    @post.code = nil
    assert !@post.valid?
  end

  test "should have appropriate length description" do
    @post.description = "a" * 900
    assert @post.valid?

    @post.description = "a" * 2_000
    assert !@post.valid?
  end

  test "should have appropriate length code" do
    @post.code = "a" * 9_000
    assert @post.valid?

    @post.description = "a" * 12_000
    assert !@post.valid?
  end
end
