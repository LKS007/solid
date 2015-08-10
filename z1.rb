def factorial n
	return 1 if n==1
	return n* factorial(n-1)
end

print "Vvedite factorial \n"
n = gets.chomp.to_i
answer = factorial(n)
