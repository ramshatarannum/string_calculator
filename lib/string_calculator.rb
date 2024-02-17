class StringCalculator
	def add(number)
		#for emepty string
		return 0 if number == ""

		special_character = ','

		#to handle single number in string 
		result = number.split(special_character).map(&:to_i)
		return result.sum
	end
end

