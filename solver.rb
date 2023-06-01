class Solver 
  def factorial(n)
    raise ArgumentError, "Number must not be negative" if n < 0
    return 1 if n == 0 || n == 1
    n * factorial(n - 1)
  end

  def reverse_string(word)
    reverse = word.reverse
    reverse
  end

  def fizz_buzz(n)
    if n % 3 == 0 && n % 5 != 0
      return 'Fizz'
    elsif n % 5 == 0 && n % 3 != 0
      return 'Buzz'
    elsif n % 3 == 0 && n % 5 == 0
      return 'FizzBuzz'
    else
      return n.to_s
    end
  end
end
