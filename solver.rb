class Solver
  def factorial(n)
    raise ArgumentError, 'Number must not be negative' if n.negative?
    return 1 if [0, 1].include?(n)

    n * factorial(n - 1)
  end

  def reverse_string(word)
    word.reverse
  end

  def fizz_buzz(n)
    if (n % 3).zero? && n % 5 != 0
      'Fizz'
    elsif (n % 5).zero? && n % 3 != 0
      'Buzz'
    elsif (n % 3).zero? && (n % 5).zero?
      'FizzBuzz'
    else
      n.to_s
    end
  end
end
