# PCP Scheme  Uebung Woche 6 Aufgabe 7

class Lottonumbers
  def numbers (n)
    lottery_numbers = []
    begin
      # add 1 because otherwise it gives you numbers from 0-48
      number = rand(49)+1
      lottery_numbers.push(number) unless lottery_numbers.include?(number)
    end while lottery_numbers.size < n
    return lottery_numbers
  end
end

puts Lottonumbers.new.numbers(6).join(" ")

