require 'minitest/autorun'
require 'minitest/pride'
require './lib/look_up'

class LookUpTest < Minitest::Test

  def test_it_exists
    look_up = LookUp.new
    assert_instance_of LookUp, look_up
  end

  def test_it_can_compare
    look_up = LookUp.new
    assert_equal [["0.", "..", ".."]], look_up.translate("a")
  end

  def test_it_can_be_split
    look_up = LookUp.new
    assert_equal "0.", look_up.line_one("a")
    assert_equal "..", look_up.line_two("a")
    assert_equal "..", look_up.line_three("a")
  end

  def test_it_can_stack
    look_up = LookUp.new
    assert_equal "0.\n..\n..\n", look_up.stack("a")
  end
end
