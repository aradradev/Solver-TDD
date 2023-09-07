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

  end
end
