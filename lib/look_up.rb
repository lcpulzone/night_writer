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

  def line_one(string)
    line1 = translate(string).map do |string|
      string[0]
    end.join
  end

  def line_two(string)
    line2 = translate(string).map do |string|
      string[1]
    end.join
  end

  def line_three(string)
    line_3 = translate(string).map do |string|
      string[2]
    end.join
  end

  def stack(string)
    line_one(string) + "\n" + line_two(string) + "\n" + line_three(string) + "\n"
  end
end
