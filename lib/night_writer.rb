class NightWriter
  attr_reader :input

  def initialize
    @input = ARGV
  end

  if ARGV.length == 2
    puts "Created 'braille.txt' containing 256 characters"
  else
    puts "Please give two arguments for the proper message"
  end
end
