student = []
 puts "Please sign your name if you are present"
 student << gets.chomp.upcase
  case
  when student == "Ron"
    puts"Ron is present in class."
  when student == "Harry"
    puts "Harry is present in class."
  when student == "Hermione"
    puts "Hermione is present in class."

  end
  puts"Dear Mr.Hogwarts #{student} is present in class."
