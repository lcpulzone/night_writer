require './lib/look_up'

class FilePaths
attr_reader :input,
            :output,
            :look_up

  def initialize()
    @input = ARGV[0]
    @output = ARGV[1]
    @look_up = LookUp.new
  end

  def first_message
    File.open(input, "r") do |file|
      file.read
    end
  end

  def write_message_to_file
    # second_message = look_up.stack(first_message)
    second_message = look_up.translate(first_message).join
    File.open(output, "w") do |file|
      file.write(second_message)
    end
      if ARGV.length == 2 && input == 'message.txt'
        puts "Created '#{output}' containing #{second_message.size} characters"
      end
    puts "- " * 25
    puts first_message
    puts "- " * 25
    p second_message
  end

end
