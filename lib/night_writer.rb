class NightWriter
  attr_reader :input

  def initialize
    @input = ARGV
  end

  if ARGV.length == 2 && ARGV[0] == "message.txt"
    puts "Created '#{ARGV[1]}' containing #{ARGV[1].length} characters"
  elsif ARGV.length != 2
    puts "Please give two arguments for the proper message"
  end

  handle = File.open(ARGV[0], "r+")

  message_txt = handle.read

  puts "- " * 25

  def message_length
     puts message_txt.length
  end

  puts message_txt

  handle.close

  writer = File.open(ARGV[1], "w+")

  braille_txt = message_txt.replace

  writer.write(braille_txt)

  writer.close
end
