require 'minitest/autorun'
require 'minitest/pride'
require './lib/Messages'

class MessagesTest < Minitest::Test

  def test_it_exists
    messages = Messages.new
    assert_instance_of Messages, messages
  end
end
