class Solver
  def factorial(num)
    raise ArgumentError, 'Number must not be negative' if num.negative?
    return 1 if [0, 1].include?(num)

    num * factorial(num - 1)
  end

  def reverse_string(word)
    word.reverse
  end

  def fizz_buzz(num)
    if (num % 3).zero? && num % 5 != 0
      'Fizz'
    elsif (num % 5).zero? && num % 3 != 0
      'Buzz'
    elsif (num % 3).zero? && (num % 5).zero?
      'FizzBuzz'
    else
      num.to_s
    end
  end
end
