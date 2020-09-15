# frozen_string_literal: true

# Trevco Code Challenge
# Fill in the following function to make the test pass
# You can run test with: ruby -Ilib:test test/test_code_challenge.rb


class CodeChallenge
  # Write a function that determines if a string starts with an upper-case letter A-Z.
  def start_with_uppercase_letter?(string)
    !!(string =~ /^[A-Z]/)
  end

  # Write a function that determines the area of a circle given the radius.
  def area_of_circle(radius)
    return 'radius should be positive' unless radius.to_f > 0
    Math::PI * (radius**2)
  end

  # Write a function to add up all the values in an array.
  def sum_array(array)
    array.inject(0) { |sum,x| sum += x }
  end

  # Write a function that determines if a string is a palindrome.
  def palindrome?(string)
    string.downcase == string.reverse.downcase
  end

  # Write a recursive function to determine the Nth Fibonacci Number in the Fibonacci sequence
  def nth_fibonacci(nth)
    fib = [0,1]
    counter = 0

    while counter < nth do
      next_num = fib.shift + fib.last
      fib.push(next_num)
      counter += 1
    end

    fib.first
  end

  # Write a function that takes and array of numbers, multiplies each them by their index, and writes it's values to a csv.
  # The csv should have have 3 columns. index, number, and sum.
  def write_array_to_csv(array)
    filename = 'test.csv' # test expects this filename

    File.open(filename, 'wb') do |f|
      f.write("index,number,sum\n")

      array.each.with_index do |x,index|
        f.write("#{index},#{x},#{index * x}\n")
      end
    end
  end
end
