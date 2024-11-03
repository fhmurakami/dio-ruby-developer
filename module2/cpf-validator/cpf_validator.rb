require 'cpf_cnpj'

print 'Digite um CPF: '
number = gets.chomp

cpf = CPF.new(number)

puts "O CPF #{cpf.formatted} é #{cpf.valid? ? 'válido' : 'inválido'}"