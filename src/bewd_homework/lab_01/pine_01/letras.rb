# Hola estos son los ejercicios del libro Aprende a Programar Christ Pine
# traduccion by Daniel Rojo
# Capitulo Letras [Strings]
#Pregunta tu nombre?
puts "Cual es tu nombre?"
name = gets.chomp
sleep 1
puts"Hola #{name} y cual es tu apellido?"
last = gets.chomp
sleep 1
puts"Hola, #{name} #{last} encantado en conoserte!"

# Numero favorito
puts"Hola, cual es tu numero favorito?"
fab_num = gets.chomp.to_i + 1
sleep 1
puts"Bien, que te parece si pienso en el numero mas favorito!"
sleep 2
puts "Calculando..."
sleep 1
puts "Tu numero favorito es #{fab_num}"
