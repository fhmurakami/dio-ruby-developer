require_relative 'product'
require_relative 'market'

# run the program
def run(product, price)
  @product = Product.new(product, price)
  @market = Market.new(@product)

  print_table(@product, @market)
end

# set the table configurations based on the buy message length for a specific product
def table_configurations(product)
  price_length = product.price.to_s.length
  product_length = product.name.length
  fixed_phrase_length = 33 # | You bought the product  for $ | == 33 characters
  phrase_length = fixed_phrase_length +  product_length + price_length
  multiplier = phrase_length.even? ? phrase_length + 1 : phrase_length

  # multiplier - 4 / 2 (-4 because of the pipes and spaces in the edges)
  half_multiplier = (multiplier - 4) / 2
  return multiplier, half_multiplier, price_length, product_length
end

# print the formatted table:
# -------------------
# | Notebook | 2500 |
# -------------------
# | You bought...   |
# -------------------
def print_table(product, market)
  puts
  multiplier, half_multiplier, price_length, product_length = table_configurations(product)
  puts "-" * multiplier
  puts "| #{product.name}#{' ' * (half_multiplier - product_length)}|#{' ' * (half_multiplier - price_length)}#{product.price} |"
  puts "-" * multiplier

  market.buy

  puts "-" * multiplier
end

# call the run method for each product
run('Notebook', 2500)

run('Smartphone', 1500)

run('Tablet', 3000)