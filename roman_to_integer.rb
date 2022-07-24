ROMAN_LETTERS = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000
}

def roman_to_int(input)
  return 'Please provide a string less than 15 characters.' if input.length >= 15
  return 'Please provide a string greater than 1.' if input.empty?

  check = false
  input.upcase.chars.map { |s| check = true unless ROMAN_LETTERS.keys.include?(s) }

  return 'Input contains unknown characters.' if check

  temp = 0
  result = 0
  input = input.upcase

  input.chars.each_with_index do |elem, index|
    next_character = ROMAN_LETTERS[input[index + 1]]
    current_character = ROMAN_LETTERS[elem]

    if next_character && current_character < next_character
      temp = current_character
    else
      result += (current_character - temp)
      temp = 0
    end
  end

  return 'Input is out of the range [1, 3999].' if result > 3999 || result < 1

  result
end

number = roman_to_int('MMMM')
puts(number)
