puts "QUE!"

 while true do
    puts '>'
       reply_tograms = gets.chomp
      if reply_tograms == 'BYE'
               break
        elsif reply_tograms != reply_tograms.upcase
            puts "HUH?! SPEAK UP, MIJO!"
        else
            yrs = rand(1930..1950)

            puts "NO, NO DESDE EL #{yrs}!"

        end
  end
