# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil || number < 0
  reverse_number(number)
end

def reverse_number(number)
  j = 0
  k = 0
  until number < 10**k
    k += 1
  end
  while j < k
    k -= 1
    if (number/(10**j)) % 10 != (number/(10**k)) % 10
      return false
    end
    j += 1
  end
  true
end
