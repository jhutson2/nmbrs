puts "You pick the range."
computer_number = rand(1..100)
p computer_number
count = 5
guesses = []

loop do

  puts "What is your guess?"
  input_as_number = gets.chomp.to_i


  def wrong_answer wrong_answer_color
    print "\e[31m#{wrong_answer_color}\e[0m"
  end

  if guesses.include? (input_as_number)
    wrong_answer "Ummmm did you think we didn't notice you put that twcie? "

  end

guesses << input_as_number

  if input_as_number < computer_number
     wrong_answer "Your number is too low! "
  end

  if input_as_number > computer_number
      wrong_answer "Your number is too high! "
  end

def right_answer right_answer_color
  print "\e[32m#{right_answer_color}\e[0m"

end

  if input_as_number == computer_number
      right_answer "You got it!"
     break
  end

  count = count - 1
  if count == 0
    wrong_answer "You guessed too many times"
    break
  end
end
