puts "Are you an admin? Y/N"

admin = gets.chomp.upcase
code = "9090"
access_denied_msg = "Yo You  don't have admin access"
access_granted_msg = "Welcome OG :)"

if admin == "Y"
  puts "What is the code?"
  user_code = gets.chomp
  if user_code == code
    puts access_granted_msg
  elsif user_code == "HINT"
    puts "9090"
    puts "What is the code?"
    user_code = gets.chomp
    if user_code == code
      puts access_granted_msg
    else
      puts access_denied_msg
    end
  else
    puts access_denied_msg
  end
else
  puts "Sorry, you do not have admin access."
end
