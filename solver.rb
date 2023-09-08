class Solver
  def factorial(n)
    if n.negative?
      raise ArgumentError, 'Factorial with negative number is not defined'
    elsif n.zero?
      1
    else
      result = 1
      (1..n).each { |i| result *= i }
      result
    end
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(n)
    out = ''
    out = 'Fizz' if (n % 3).zero?
    out = 'Buzz' if (n % 5).zero?
    out = 'FizzBuzz' if (n % 3).zero? && (n % 5).zero?
    out = n.to_s if out.empty?
    out
  end
end
