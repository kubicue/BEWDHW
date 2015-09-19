=begin
 Title: Homework for GA BEWD-LA-08 class
 Name: animal_sounds.rb
 Author: Jonathan Figueroa
 URI: https://github.com/kubicue/BEWDHW/blob/master/01_week/animal_sounds.rb
=end

# Choose an animal
puts "Enter an animal that makes a sound:"
my_animal = gets.chomp

# What sound your animal makes
puts "What sound does a #{my_animal.downcase} make?"
animal_sound = gets.chomp

# How many times
puts "The " + my_animal.downcase + " goes " + animal_sound.downcase.strip + " how many times?"
sound_times = gets.chomp.to_i

# Output with string concatenation
puts "The " + my_animal.downcase + " goes " + (animal_sound.downcase.strip + "," + " ") * (sound_times - 1) + animal_sound.downcase.strip + "."
