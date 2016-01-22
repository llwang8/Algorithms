def get_products_of_all_ints_except_at_index(arr)
	result = []
 	arr.map do |i|	
 		product = 1
 		arr.each do |j|
 			product *= j if i != j  
 			result << product if j == arr[arr.length - 1]
 			puts "i: #{i}   j: #{j}  product: #{product}"
 		end
 	end
 	puts result
end

#get_products_of_all_ints_except_at_index([1, 7, 3, 4])

def coin_denominaitons(money, denom)
	count = 0
	result = []
	#M = money
	#D = denom.reverse
	def denominate (mm, dd)
		subresult = []
		#while m > 0
			dd.each do |d|
				while mm >= d
					subresult << "#{d}c"
					mm - d
				end
			end
		#end
		puts subresult
		result << subresult
		count += 1
		dd.shift
		denominate(mm, dd)
	end	
	denominate(money,denom)
	puts "Number of ways to make #{M}: #{count}"
	puts result
end
coin_denominaitons(4, [1,2,3])


