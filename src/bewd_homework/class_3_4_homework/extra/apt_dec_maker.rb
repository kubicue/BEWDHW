# In progress ...

puts "Welcome to Apartment Decision Maker"
puts "We will find you an aparment that accomodate your budget."
puts "To best fits your needs answer the question with simple Yes or No"

user_feedback = false
while (not user_feedback)
      puts "Do you want to look for an aparment? (Yes or No)"
      answer = gets.chomp.downcase

      if (answer == "yes" or answer == "no")
        answer = true
      else
        puts "Please anwser the question with yes or no."
    end
end
user_feedback = false
while (not user_feedback)
      puts "What city do you like to live? ie.[Los Angeles, San Diego]?"
      answer = gets.chomp.downcase

      if (answer == "yes" or answer == "no")
        answer = true
      else
        puts "Please anwser the question with yes or no."
    end
end
