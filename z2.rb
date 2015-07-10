
def validation (str)
	length_string = str.length
	left = 0
	right = 0
	for i in 0..length_string
		x=str[i]
		if x == "("
			left+=1
		elsif x == ")"
			right+=1
		end
		if right>left
			return "Ne validnaya stroka. Zakrytyh bolshe"
			
		end
	end
	if left==right
		return "Validnaya stroka!!!"
	else return "Different number"
	end
end
		
str = gets.chomp.to_s
puts "#{validation(str)}"
