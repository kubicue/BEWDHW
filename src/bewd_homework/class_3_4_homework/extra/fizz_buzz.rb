# fizz buzz program
(1..100).each do |num| # count 1..100 also print numbers to terminal console via num variable.
mo3 = num.modulo(3) == 0 #varible for numbers % 3
mo5 = num.modulo(5) == 0 #variable for numbers % 5

puts case
when (mo3 and mo5) then 'FizzBuzz'
when mo3 then 'Fizz'
when mo5 then 'Buzz'
else num
end
end
