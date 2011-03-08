puts "This program accepts two lists of words from users."
puts "List all words on a single line and delimit them with commas."

puts "First List:"
first_list = gets

puts "Second List:"
second_list = gets

first_word_array = first_list.chomp.split(",")
second_word_array = second_list.chomp.split(",")
print_array = []

p first_word_array
p second_word_array

i = 0
while i < first_word_array.length
  j = 0
  while j < second_word_array.length
    if first_word_array[i] != second_word_array[j]
      print_array << (first_word_array[i].gsub(" ", "") + second_word_array[j].gsub(" ", "")).downcase
    end
    j += 1
  end
  i += 1
end

print_array.each do |i|
  puts i
end
