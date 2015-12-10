# PCP Prolog Uebung Woche 3 Aufgabe 1
class FibonaccRecursively
  def fibonacci( n )
    return  n  if n <= 1
    fibonacci( n - 1 ) + fibonacci( n - 2 )
  end
end

puts FibonaccRecursively.new.fibonacci(7)