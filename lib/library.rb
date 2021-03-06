class Library
  attr_reader :first_line,
              :second_line,
              :third_line

  def initialize
    @first_line = first_line
    @second_line = second_line
    @third_line = third_line
  end

  def first_lines
    decade1 = {
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "0.", ".."],
      "j" => [".0", "00", ".."]
    }
  end

  def second_lines
    decade2 = {
      "k" => ["0.", "..", "0."],
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "q" => ["00", "00", "0."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."]
    }
  end

  def third_lines
    decade3 = {
      "u" => [".0", "..", "00"],
      "v" => ["0.", "0.", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"],
      " " => ["..", "..", ".."]
    }
  end

end

# library = Library.new
# puts library.first_lines.values
# puts "~~" * 25
# puts library.second_lines.values
# puts "~~" * 25
# puts library.third_lines.values
