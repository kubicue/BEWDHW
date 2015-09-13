# Who I Am
print "Whats is you Name?"
my_name = gets.chomp
print "Where do you grew up?"
grew_up = gets.chomp
print "What is your current job title"
current_job = gets.chomp
print "Do you have a magic talent?"
hidden_talent = gets.chomp

# Print output
puts "My name is #{my_name}, I grew up in #{grew_up}. I currently work as a #{current_job} and I like to #{hidden_talent}."

# Print downcase
puts "My name is #{my_name.downcase}, I grew up in #{grew_up.downcase}. I currently work as a #{current_job.downcase} and I like to #{hidden_talent.downcase}."
