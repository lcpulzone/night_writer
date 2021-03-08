require './lib/library'

class LookUp
  attr_reader :library

  def initialize
    @library = Library.new
  end

  def translate(string)
    string.split("").map do |letter|
      library.basic[letter]
    end
  end

  def braille(string)
    sliced = translate(string).slice(0)
    line1 = sliced.slice(0)
    line2 = sliced.slice(1)
    line3 = sliced.slice(2)
    puts line1, line2, line3
  end
end
