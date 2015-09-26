# In progress ...

puts "Welcome to Apartment Decision Maker"
puts "We will find you an aparment that accomodate your budget."
puts "To best fits your needs answer the question with simple Yes or No"

user_feedback = gets.chomp

while
  if user_feedback == 'Yes'
  puts "Do you want to look for an apartment (Yes or No) "
else  user_feedback == 'No'
    puts "Thanks for using our service, have nice day!"
  end
end
