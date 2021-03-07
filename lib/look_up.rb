require './lib/library'

class LookUp
  attr_reader :library

  def initialize
    @library = Library.new
  end

  def translate(string)
    # bucket = []
    string.split("").map do |letter|
      library.basic[letter]
    end
    # bucket
  end

end
