def even_numbers(numbers)
  numbers.select { |number| number % 2 == 0}
end

p even_numbers([1, 2, 3, 4, 5, 6, 7])
