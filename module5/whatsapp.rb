print "Digite seu Whatsapp no formato (xx) xxxxx-xxxx: "
whatsapp = gets.chomp

match = /\(\d{2}\) 9 \d{4}-\d{4}/.match(whatsapp)

puts "#{match ? 'Meu Whatsapp é: ' + match : 'Formato inválido'}"