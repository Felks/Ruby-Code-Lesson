MAX_NUMBER = 10
MIN_NUMBER = 1
GUESS_NUMBER = 5

puts "Hello player. What is your name?"
name = gets
name = name.chomp

puts
puts "Hello #{name}. This is a guessing game."
puts "You need to guess the number. I will tell you if you are too low or too high."
puts "Everytime you guess wrong, another number will be chosen."
puts "If you need a clue, just type clue."
puts

# DIFFICULTY
puts "Please select the difficulty: e for easy, m for medium, h for hard."
puts "(Default will be easy)"
difficulty = gets
difficulty = difficulty.chomp
difficulty = difficulty.downcase.scan(/^./)

if difficulty[0] == "m"
  max_number = MAX_NUMBER * 100
  max_guesses = GUESS_NUMBER * 2
elsif difficulty[0] == "h"
  max_number = MAX_NUMBER * 10
  max_guesses = GUESS_NUMBER * 3
else
  max_number = 10
  max_guesses = GUESS_NUMBER
end

computers_number = rand(max_number - MIN_NUMBER + 1) + MIN_NUMBER
puts "I will be guessing a number between #{MIN_NUMBER} and #{max_number}."
puts "You will be limited to #{max_guesses} guesses."

replay = "y"
game = 0

# GAME LOOP
while replay[0] == "y"
  num_guesses = 1
  start_time = Time.now
  
  game += 1
  puts
  puts "GAME #{game} START!"
  
  # GUESSING LOOP
  loop do 
    puts "Guess number #{num_guesses}. What is your guess?"
    guess = gets
  
    if guess.chomp == "clue"
      puts "The last digit of the number is: " + (computers_number % 10).to_s
    elsif guess.to_i < computers_number
      puts "Your guess was too low!"
    elsif guess.to_i > computers_number
      puts "Your guess was too high!"
    else
      # If we get here, the guess was right!
      puts "You got the number right! It was #{computers_number}."
      break
    end
  
    if num_guesses >= max_guesses
      puts "You have exceeded the maximum number of guesses."
      break
    end
    num_guesses += 1
  end

  # ELAPSED GAME TIME
  end_time = Time.now
  puts  "Game time: " + (end_time - start_time).to_s + " seconds"
  
  # REPLAY QUERY
  puts "Do you want to play again? (y or n)"
  replay = gets
  replay = replay.chomp
  replay = replay.downcase.scan(/^./)
end

puts
puts "Bye!"