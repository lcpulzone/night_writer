require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_paths'
require './lib/library'
require './lib/look_up'

class FilePathsTest < Minitest::Test

  def test_it_exists
    file_paths = FilePaths.new
    assert_instance_of FilePaths, file_paths
  end

end
