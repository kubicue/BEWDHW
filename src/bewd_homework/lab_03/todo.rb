todo = []
puts "What do you need to do today?"
todo << gets.chomp
todo.each do |item|
  puts item
end
