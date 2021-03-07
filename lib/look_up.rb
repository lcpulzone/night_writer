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

  
end
