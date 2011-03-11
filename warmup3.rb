puts "This program accepts two lists of words from users."
puts "List all words on a single line and delimit them with commas."

puts "First List:"
first_list = gets.chomp

puts "Second List:"
second_list = gets.chomp

first_word_array = first_list.split(",").collect { |word| word.gsub(" ", "").downcase }
second_word_array = second_list.split(",").collect { |word| word.gsub(" ", "").downcase }
print_array = []

first_word_array.length.times do |i|
  second_word_array.length.times do |j|
    if first_word_array[i] != second_word_array[j]
      print_array << first_word_array[i] + second_word_array[j]
    end
  end
end

print_array.each do |i|
  puts i
end
