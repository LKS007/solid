
def validation (str)
	count = 0
	str.length.times do |x|
		count+=1 if str[x] == "("
		count-=1 if str[x] == ")"
		return "Zakrytyh bolshe" if count < 0
	end
	return "Otkrytyh bolshe" if count != 0
	return "Validnaya stroka!!!"
end
		
str = gets.chomp.to_s
puts "#{validation(str)}"
