def rand_between(min, max)
  rand(max - min + 1) + min
end

puts "Hello, please input a minimum and a maximum number."
puts "I will guess a number within that range."

puts "Minimum number:"
min_num = gets.chomp

puts "Maximum number"
max_num = gets.chomp

puts "How many random numbers do you want?"
num_rand = gets.chomp

# Detect undesirable inputs
if (min_num !~ /^\d+$/) || (max_num !~ /^\d+$/) || (num_rand !~ /^\d+$/)
  puts "Inputs are not integers."
elsif max_num.to_i <= min_num.to_i
  puts "Invalid range."
else
  num_rand.to_i.times do
    puts "Your random number is: " + rand_between(min_num.to_i, max_num.to_i).to_s
  end
end