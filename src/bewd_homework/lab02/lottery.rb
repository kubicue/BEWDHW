secret_number = "9"
answer = "none"

while answer != secret_number
  puts "Guess the secret number"
  answer = gets.chomp
  if answer == secret_number
    puts "CONGRATS! You got it!"
  else
    puts "Sorry, that's not it. Wanna try again? [Y/N]"
    if gets.chomp.upcase == "N"
      break
    end
  end
end
