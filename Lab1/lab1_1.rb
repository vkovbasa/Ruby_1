# 1. Дано цілочисельний масив. Необхідно вивести спочатку його елементи з парними індексами, а потім - з непарними.
data = [1, 2, 3, 4, 5, 6]
data_even_odd = data.partition.with_index { |_, i| i.even? }.flatten
puts "Задача 1: #{data_even_odd}"

# 3. Дано цілочисельний масив. Вивести номер першого з тих його елементів, які задовольняють подвійній нерівності: A[0] < A[i] < A[-1]. Якщо таких елементів немає, то вивести [ ].
data = [2, 3, 1, 5, 6]
first_index = data.find_index { |e| data[0] < e && e < data[-1] } || []
puts "Задача 3: #{first_index}"

# 7. Дано цілочисельний масив. Перетворити його, додавши до непарних чисел останній елемент. Перший і останній елементи масиву не змінювати.
data = [2, 3, 1, 5, 6]
last = data[-1]
transformed_data = data.map.with_index { |e, i| (i != 0 && i != data.size - 1 && e.odd?) ? e + last : e }
puts "Задача 7: #{transformed_data}"

# 9. Дано цілочисельний масив. Замінити всі додатні елементи на значення мінімального.
data = [1, 3, -5, 0, -4, 9]
min_value = data.min
data_positive_min = data.map { |e| e.positive? ? min_value : e }
puts "Задача 9: #{data_positive_min}"

# 13. Дано цілочисельний масив. Здійснити циклічний зсув елементів масиву вліво на одну позицію.
data = [1, 2, 3, 4, 5]
shifted_left = data.rotate(1)
puts "Задача 13: #{shifted_left}"

# 14. Дано цілочисельний масив. Здійснити циклічний зсув елементів масиву вправо на одну позицію.
data = [1, 2, 3, 4, 5]
shifted_right = data.rotate(-1)
puts "Задача 14: #{shifted_right}"

# 21. Дано цілочисельний масив. Визначити кількість ділянок, на яких його елементи монотонно зростають.
data = [1, 2, 2, 3, 4, 1, 2, 3]
ascending_sections = data.chunk_while { |i, j| i <= j }.count { |section| section.length > 1 }
puts "Задача 21: #{ascending_sections}"

# 25. Дано цілочисельний масив. Перетворити його, вставивши перед кожним додатним елементом нульовий елемент.
data = [0, 2, -3, 4, -5]
transformed = data.flat_map { |e| e.positive? ? [data[0], e] : [e] }
puts "Задача 25: #{transformed}"

# 29. Дано цілочисельний масив. Упорядкувати його за спаданням.
data = [3, 1, 4, 2, 5]
sorted_desc = data.sort.reverse
puts "Задача 29: #{sorted_desc}"

# 33. Дано цілочисельний масив. Знайти індекс мінімального елемента.
data = [3, 1, 4, 0, 5]
index_min = data.index(data.min)
puts "Задача 33: #{index_min}"

# 39. Дано цілочисельний масив. Знайти мінімальний парний елемент.
data = [3, 8, 4, 1, 6]
min_even = data.select(&:even?).min
puts "Задача 39: #{min_even}"

# 42. Дано цілочисельний масив. Знайти максимальний від'ємний елемент.
data = [3, -8, 4, -1, 6]
max_negative = data.select(&:negative?).max
puts "Задача 42: #{max_negative}"

# 47. Дано цілочисельний масив. Знайти кількість елементів, розташованих перед першим мінімальним.
data = [3, 8, 4, 0, 6]
elements_before_min = data.index(data.min)
puts "Задача 47: #{elements_before_min}"

# 61. Дано цілочисельний масив. Перевірити, чи утворює він зростаючу послідовність.
data = [1, 2, 3, 4, 5]
is_ascending = data.each_cons(2).all? { |a, b| a <= b }
puts "Задача 61: #{is_ascending}"

# 67. Дано цілочисельний масив, що містить принаймні два нулі. Вивести суму чисел з даного масиву, розташованих між першими двома нулями.
data = [1, 0, 3, 4, 0, 5]
first_zero = data.index(0)
second_zero = data.index(0, first_zero + 1)
sum_between_zeros = data[first_zero + 1...second_zero].sum
puts "Задача 67: #{sum_between_zeros}"
