# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require "pry"
def is_palindrome(number)
  return false if number == nil || number < 0
  reversed_number = reverse_number(number)
  if number == reversed_number
    true
  else
    false
  end
end

def reverse_number(number)
  digits = []
  i = 0
  while number > 10**i
    digit = (number/10**(i)) % 10
    digits << digit
    i += 1
  end
  reversed_number = 0
  length = digits.length
  length.times do |x|
    length -= 1
    reversed_number += digits[x] * 10**(length)
  end
  reversed_number
end
