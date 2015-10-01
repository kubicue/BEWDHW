# cars = ["tesla", "audi", "bmw", "cadillac", "chevy"]
# cars.each do |car|
#
# puts car
#
# end
# puts "We are looking for your car..."
# puts "--------------------------------------------"
#  sleep 3
#  puts "We got your car is #{cars[0]}"

cars = []

puts "Type in a car"
cars << gets.chomp

puts "Type in another car"
cars << gets.chomp

cars.each do |car|
  puts "------------"
  puts car
  puts "do you like this car?"
  response = gets.chomp
  if response == "yes"
    puts "AWESOME!!!"
  end
end 
