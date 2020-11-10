#Get My Number Game
#Written by: Vadim!
puts "Welcome to 'Get My Number'"

#Get_name
puts "What's your name?"
name_input = gets
name = name_input.chomp
puts "---------------------"
puts "Welcome, #{name}!"

#Get_number_target
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

#Guesses
num_guesses = 0
guessed_it = false
until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left."
  puts "Make a guess: "
  guess = gets.to_i
  num_guesses += 1
  puts "---------------------"

#True or False
  if guess < target
    puts "Oops. Your quess was LOW."
  elsif guess > target
    puts "Oops. Your quess was High."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    puts "You so smart!"
    guessed_it = true
  end
end
#No guessed
unless guessed_it
  puts "Game Over"
  puts "Sorry. You didn't get my number. (It was #{target}.)"
  puts "Try again"
end



