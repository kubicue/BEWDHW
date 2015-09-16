# Choose an animal
puts "Enter an animal that makes a sound:"
my_animal = gets.chomp
# What sound your animal makes?
puts "What sound does a #{my_animal} make?"
animal_sound = gets.chomp


# Animal Sound Output
puts "The #{my_animal.downcase} goes #{animal_sound.downcase * 3}"
