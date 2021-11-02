class Morse
  def Morse.alphabet letter
    case letter
    when ".-"
      "A"
    when "-..."
      "B"
    when "-.-."
      "C"
    when "-.."
      "D"
    when "."
      "E"
    when "..-."
      "F"
    when "--."
      "G"
    when "...."
      "H"
    when ".."
      "I"
    when ".---"
      "J"
    when "-.-"
      "K"
    when ".-.."
      "L"
    when "--"
      "M"
    when "-."
      "N"
    when "---"
      "O"
    when ".--."
      "P"
    when "--.-"
      "Q"
    when ".-."
      "R"
    when "..."
      "S"
    when "-"
      "T"
    when "..-"
      "U"
    when "...-"
      "V"
    when ".--"
      "W"
    when "-..-"
      "X"
    when "-.--"
      "Y"
    when "--.."
      "Z"
    end
  end

  def Morse.decode_char letter
    puts alphabet(letter).upcase
  end

  def Morse.decode_word string
    blob = string.split
    blob2 = ""
    blob.each { |n| blob2 += alphabet(n) }
    puts blob2
  end
end

Morse.decode_char ".-" # Should return 'A'
Morse.decode_word "-- -.--" # Should return 'MY'
