require './lib/library'
require './lib/look_up'

class FilePaths
attr_reader :input,
            :output,
            :library,
            :look_up

  def initialize()
    @input = ARGV[0]
    @output = ARGV[1]
    @library = Library.new
    @look_up = LookUp.new
  end

  def first_message
    file = File.open(input).read
  end

  def write_message_to_file
    second_message = look_up.translate(first_message).join
    File.open(output, "w") do |file|
      file.write(second_message)
    end
    puts "Created '#{output}' containing #{second_message.size} characters"
    puts "- " * 25
    puts first_message
    puts "- " * 25
    p second_message
  end

end
