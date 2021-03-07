require './lib/Library'

class NightWriter
  attr_reader :input

  def initialize
    @input = ARGV
    library = Library.new
  end

  if ARGV.length == 2 && ARGV[0] == "message.txt"
    puts "Created '#{ARGV[1]}' containing #{ARGV[1].length} characters"
  elsif ARGV.length != 2
    puts "Please give two arguments for the proper message"
  end

  handle = File.open(ARGV[0], "r+")
  message_txt = handle.read
  puts "- " * 25
  puts message_txt
  puts "- " * 25
  puts "There are #{message_txt.length} characters in the 'message_txt' file"
  puts "- " * 25
  handle.close

  writer = File.open(ARGV[1], "w+")
  braille_txt = message_txt.replace("The computer is starting to smoke...")
  writer.write(braille_txt)
  writer.close
end

library = Library.new
puts library.lower_case.values










# class NightWriter
#   def print_message
#     puts "hi"
#     file = File.open("message.txt").read
#     puts file
#   end
#
#   def read_write(desired_file_path)
#   message = "Is this really working??"
#   File.open(desired_file_path, "a+") do |file|
#     file.write(message)
#   end
# end
#
# end
# NightWriter.new.print_message
# NightWriter.new.read_write('new_new.txt')
