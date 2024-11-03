numbers = []

3.times do
  print 'Digite um número: '
  numbers << gets.chomp.to_i
end

numbers.map { |n| puts n ** 3 }