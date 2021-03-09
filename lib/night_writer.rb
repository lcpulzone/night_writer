require './lib/look_up'
require './lib/file_paths'

class NightWriter
  attr_reader :input,
              :output,
              :look_up,
              :file_paths

  def initialize()
    @input = ARGV[0]
    @output = ARGV[1]
    @look_up = LookUp.new
    @file_paths = FilePaths.new
  end

  def first_message
    @file_paths.first_message
  end

  def write_message_to_file
    @file_paths.write_message_to_file
  end

end
nr = NightWriter.new.write_message_to_file
