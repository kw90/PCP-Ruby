# PCP Prolog Uebung Woche 3 Aufgabe 1

class FibonacciRecursively
  def fibonacci( n )
    return  n  if n <= 1
    fibonacci( n - 1 ) + fibonacci( n - 2 )
  end
end

puts FibonacciRecursively.new.fibonacci(7)


