# frozen_string_literal: true

# 2. Базовий калькулятор
puts "Базовий калькулятор"
puts "Введіть перше число:"
num1 = gets.to_f
puts "Введіть оператор (+, -, *, /):"
operator = gets.chomp
puts "Введіть друге число:"
num2 = gets.to_f

result = case operator
         when "+"
           num1 + num2
         when "-"
           num1 - num2
         when "*"
           num1 * num2
         when "/"
           num2 != 0 ? num1 / num2 : "Помилка: ділення на нуль"
         else
           "Невідомий оператор"
         end

puts "Результат: #{result}"
