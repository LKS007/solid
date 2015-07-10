def factorial(fact,n, i)
	fact *= i
	if i<n
		i+=1
		factorial(fact,n,i)
	else
	return fact
	end
end

print "Vvedite factorial \n"
n = gets.chomp.to_i
fact = 1
i = 1
otvet = factorial(fact,n,i)
puts "Otvet #{otvet}"