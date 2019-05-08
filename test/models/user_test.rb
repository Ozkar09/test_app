require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Instancia de User" do
    user = User.new()
    assert_instance_of(User, user, msg=nil)
  end

  test "Guardar sin nombre" do
    user = User.new()
    assert_equal(false, user.save)
  end

  test "Guardar con nombre" do
    user = User.new()
    user.name = "oscar"
    assert_equal(true, user.save)
  end

end
