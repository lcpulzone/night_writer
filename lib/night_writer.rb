class NightWriter
  attr_reader :input,
              :output

  def initialize()
    @input = ARGV[0]
    @output = ARGV[1]
  end

  def first_message
    file = File.open(input).read
  end

  def write_message_to_file
    second_message = first_message.replace("Oh no, the computer is starting to smoke...")
    File.open(output, "w") do |file|
      file.write(second_message)
    end
    puts "Created '#{output}' containing #{second_message.size} characters"
    puts "- " * 25
    puts first_message
    puts "- " * 25
    puts second_message.replace("Oh no, the computer is starting to smoke...")
  end

end
puts NightWriter.new.write_message_to_file
# nr = NightWriter.new.read_message



# class NightWriter
#   attr_reader :input,
#               :output
#
#   def initialize
#     @input = ARGV[0]
#     @output = ARGV[1]
#     library = Library.new
#   end
#
#   def first_message
#     if @input.length == 2 && @input == "message.txt"
#       puts "Created '#{@output}' containing #{@output.length} characters"
#     elsif @input.length != 2
#       puts "Please give two arguments for the proper message"
#     end
#   end
#
#   handle = File.open(ARGV[0], "r+")
#   message_txt = handle.read
#   puts "- " * 25
#   puts message_txt
#   puts "- " * 25
#   puts "There are #{message_txt.length} characters in the 'message_txt' file"
#   puts "- " * 25
#   handle.close
#
#   writer = File.open(ARGV[1], "w+")
#   braille_txt = message_txt.replace("The computer is starting to smoke...")
#   writer.write(braille_txt)
#   writer.close
# end
#
# nightwriter = NightWriter.new.first_message
# library = Library.new
# puts library.lower_case.values
