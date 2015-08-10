def factorial n
	fact = 1
	n.times {|i|  fact*=i+1}
	puts "#{fact}"
end

print "Vvedite factorial \n"
n = gets.chomp.to_i
factorial(n)
