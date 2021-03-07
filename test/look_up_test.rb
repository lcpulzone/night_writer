require 'minitest/autorun'
require 'minitest/pride'
require './lib/look_up'

class LookUpTest < Minitest::Test

  def test_it_exists
    look_up = LookUp.new
    assert_instance_of LookUp, look_up
  end
end
