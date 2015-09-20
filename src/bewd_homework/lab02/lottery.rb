# Jonathan Solution
=begin while
puts "Welcome to the lotto game, play type number"

if secret_num == 7
  puts "You are winner!"
else
  puts "Sorry try again?"
 end
end
=end
# Ira's Solution
secret_number = 9
answer = "none"

while answer != secret_number
  puts "Guess the secret number"
  answer = gets.chomp
  if answer == secret_number
    puts "You Win"
  end
else
  puts "Try Again!"
 end
end
