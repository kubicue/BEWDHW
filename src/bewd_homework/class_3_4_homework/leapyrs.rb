puts "Welcome to leap year finder"
puts "Please type starting year."
start_yr = gets.chomp.to_i
puts "Please type an ending year."
end_yr = gets.chomp.to_i

puts "Leap years in between #{start_yr} and #{end_yr}:"
   while (start_yr <= end_yr) do
     if start_yr % 4 == 0

       if start_yr % 400 == 0

       puts "#{start_yr}"
     elsif start_yr % 100 == 0
       # do not return output

       else
          puts"#{start_yr}"

       end

    end
      start_yr = start_yr + 1
  end
