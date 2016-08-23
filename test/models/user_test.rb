require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should respond password_confirmation" do
    user = User.new
    assert_respond_to user, :password_confirmation
  end

  test "should match password confirmation" do
    user = User.new
    user.email = 'aaa@example.com'
    user.password = 'foo'
    user.password_confirmation = 'bar'
    assert user.invalid?
  end

  test "should has password at least 8 chars" do
    user = User.new
    user.email = 'aaa@example.com'
    user.password = user.password_confirmation = 'abcdef'
    assert user.invalid?
  end

  test "should not save user without email" do
    user = User.new
    assert_not user.save
  end

  test "should have unique email" do
    user1 = User.new
    user2 = User.new
    user1.email = user2.email = 'foo'
    user1.save
    assert_not user2.save
  end
end
