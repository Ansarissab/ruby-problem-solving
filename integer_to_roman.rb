ROMAN_NUMBERS = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

def integer_to_roman(number)
  roman = ''
  ROMAN_NUMBERS.each do |value, letter|
    roman << letter * (number / value)
    number = number % value
  end
  roman
end

# puts(integer_to_roman(number))
