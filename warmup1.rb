def rand_between(min, max)
  rand(max - min + 1) + min
end

def rand_return(min, max, num)
  rand_array = []
  i = 0
  while i < num
    rand_array.push(rand_between(min, max))
    i += 1
  end
  
  return rand_array
end

puts "Hello, please input a minimum and a maximum number."
puts "I will guess a number within that range."

puts "Minimum number:"
min_num = gets

puts "Maximum number"
max_num = gets

puts "How many random numbers do you want?"
num_rand = gets

# Detect undesirable inputs
if (min_num =~ /^\d+$/) || (max_num =~ /^\d+$/)
  puts "Inputs are not integers."
elsif max_num.to_i <= min_num.to_i
  puts "Invalid range."
else
  rand_return(min_num.to_i, max_num.to_i, num_rand.to_i).each do |i|
    puts "Your random number is: " + i.to_s
  end
end