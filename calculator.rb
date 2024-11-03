# This method receives two numbers from the user and returns them
# as float numbers.
def get_number
  # Receives the first number from the user
  print 'Primeiro valor: '
  num1 = gets.chomp.to_f
  # Receives the second number from the user
  print 'Segundo valor: '
  num2 = gets.chomp.to_f
  # Returns the two numbers as an array
  return num1, num2
end

# This method shows the main menu of the program.
def show_menu
    puts 'Selecione uma das seguintes opções'
    puts '1 - Soma (+)'
    puts '2 - Subtração (-)'
    puts '3 - Multiplicação (*)'
    puts '4 - Divisão (/)'
    puts '0 - Sair'
    print 'Opção: '

    gets.chomp.to_i
end

# This method calculates the result based on the
# option selected by the user and the two numbers received.
def calculate(option)
  case option
    when 1
      # Calls the get_number method to receive the two numbers from the user
      # and performs the addition between them.
      num1, num2 = get_number()
      result = "#{num1} + #{num2} = #{num1 + num2}"
    when 2
      # Calls the get_number method to receive the two numbers from the user
      # and performs the subtraction between them.
      num1, num2 = get_number()
      result = "#{num1} - #{num2} = #{num1 - num2}"
    when 3
      # Calls the get_number method to receive the two numbers from the user
      # and performs the multiplication between them.
      num1, num2 = get_number()
      result = "#{num1} * #{num2} = #{num1 * num2}"
    when 4
      # Calls the get_number method to receive the two numbers from the user
      # and performs the division between them.
      num1, num2 = get_number()
      # Checks if the second number is zero, which would cause a division by
      # zero error. If so, shows an error message instead of performing the
      # division.
      if num2 == 0
        result = 'Impossível dividir por zero'
      else
        result = "#{num1} / #{num2} = #{num1 / num2}"
      end
    else
      # If the option selected by the user is invalid, shows an error message.
      result = show_error()
    end
  # Returns the result of the operation as a string.
  return result
end
# This method shows an error message if the user selected an option
# that is not valid.
def show_error
  return 'Opção inválida'
end

# This method shows the result of the operation selected by the user.
def show_result(result)
  puts result
end

def main
# This is the main loop of the program, where the user is asked to
# select an option and perform the corresponding operation.
  result = ''

  loop do
    show_result(result) unless result.empty?

    option = show_menu
    break if option == 0

    result = calculate(option)

    show_result(result)

    # Clears the screen before the next iteration of the loop.
    system 'clear'
  end
end

main()