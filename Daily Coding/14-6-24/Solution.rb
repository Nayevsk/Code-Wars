def two_sum?(numbers, k)
    seen_numbers = {}

    numbers.each do |num|
      complement = k - num
      return true if seen_numbers[complement]

      seen_numbers[num] = true
    end

    false
  end

  # Example usage:
  numbers = [10, 15, 3, 6]
  k = 17
  puts two_sum?(numbers, k)