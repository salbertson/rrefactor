require 'test_helper'

class PostTest < ActiveSupport::TestCase
  fixtures :posts

  test "should have a an associated user" do
    post = posts(:valid)
    post.user = nil
    assert !post.valid?
  end

  test "should have a description" do
    post = posts(:valid)
    post.description = nil
    assert !post.valid?
  end

  test "should have code" do
    post = posts(:valid)
    post.code = nil
    assert !post.valid?
  end

  test "should have appropriate length description" do
    post = posts(:valid)
    post.description = "a" * 900
    assert post.valid?

    post.description = "a" * 2_000
    assert !post.valid?
  end

  test "should have appropriate length code" do
    post = posts(:valid)
    post.code = "a" * 9_000
    assert post.valid?

    post.description = "a" * 12_000
    assert !post.valid?
  end
end
