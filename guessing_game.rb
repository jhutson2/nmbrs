puts "You pick the range."

# Pick a random number between 1 and 100
computer_number = rand(1..100)
p computer_number
count = 5

loop do
  # Prompt you for a guess
  puts "What is your guess?"
  input_as_number = gets.chomp.to_i

  # If your guess is less than the program's number,
  # it should tell you that you were low and let you guess again.
  def wrong_answer wrong_answer_color
    print "\e[31m#{wrong_answer_color}\e[0m"
  end
  if input_as_number < computer_number
     wrong_answer "Your number is too low!"
  end

  # If the guess is greater than the program's number, it should tell you that you were high and let you guess again.
  if input_as_number > computer_number
      wrong_answer "Your number is too high!"
  end

def right_answer right_answer_color
  print "\e[32m#{right_answer_color}\e[0m"

end
  # If your guess is correct, the program should tell you that you win and then quit.
  if input_as_number == computer_number
      right_answer "You got it!"
     break
  end

  # After 5 incorrect guesses, the program should tell you that you lose.
  count = count - 1
  if count == 0
    wrong_answer "You guessed too many times"
    break
  end
end
