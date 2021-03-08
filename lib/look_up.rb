require './lib/library'

class LookUp
  attr_reader :library

  def initialize
    @library = Library.new
  end

  def translate(string)
    string.split("").map do |letter|
      library.basic[letter]
    end.flatten
  end

  def line_one(string)
    line1 = translate(string).slice(0)
  end

end
