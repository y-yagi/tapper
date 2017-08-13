require "test_helper"
require "user"

class TapperTest < Minitest::Test
  def test_tapper
    user = User.new.taro.admin

    assert_instance_of User, user
    assert_equal "taro", user.name
    assert user.administrator
  end

  def test_do_not_tap_private_method
    assert_equal "helper_method", User.new.send(:helper_method)
  end
end
