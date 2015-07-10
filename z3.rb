class 	Finder
	def initialize arrays
		@arr_in = arrays
		@answer = [0,0]
		@count = 0
	end
	
	def find
		arr_length = @arr_in.length
		find_1(0,arr_length-1)
	end
	

	def find_1(arr_beg,arr_end)
		i = (arr_end-arr_beg)/2
		if @arr_in[i+arr_beg] == i+1+arr_beg
			#puts "OK: #{arr_beg+i} ,#{i+1+arr_beg}"
			find_1(i+1+arr_beg,arr_end)
		elsif @arr_in[i+arr_beg] == i+2+arr_beg
			find_2(arr_beg,arr_beg+i,0)
			find_2(arr_beg+i+1,arr_end,1)
			#puts "Propucheno #{arr_beg+i+1}"			
		else
			puts "1. #{arr_beg} #{arr_beg+i}"
			if arr_beg == arr_end
				x = @count
				find_2(arr_beg, arr_end, x)
				x = @count
				find_2(arr_beg+i, arr_end, x)
			else
			find_1(arr_beg,arr_beg+i)
			end
			
		end
	end

	def find_2(arr_beg,arr_end,adds)
		#puts "flag2: #{arr_beg}, #{arr_end}"

		if arr_end - arr_beg == 1
			if @arr_in[arr_beg] == arr_beg+2+adds
				@answer[@count]= arr_beg+1+adds
			else
				@answer[@count] = arr_beg+2+adds
			end
			@count+=1
		elsif arr_beg == arr_end
			@answer[@count]= arr_beg+1+adds
			@count+=1
		else
			i = (arr_end-arr_beg)/2
			if @arr_in[i+arr_beg] == i+2+arr_beg+adds
				find_2(arr_beg,arr_beg+i,adds)
			else
				find_2(arr_beg+i+1,arr_end,adds)
			end
		end
	end
	def display
		puts "elementy: #{@answer[0]}, #{@answer[1]}"
	end

				

end


arrays = [1,2,3,4,5,7,8,9,10,11,12,13,15,16,17,18,19,20,21,22,23,24,25,26]
obj = Finder.new arrays
obj.find
obj.display