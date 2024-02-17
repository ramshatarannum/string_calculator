class StringCalculator
	def add(number)
		#for emepty string
		return 0 if number == ""

		special_character = ','

		#to handle single number in string 
		result = number.split(special_character).map(&:to_i)

		#if number is negative
		negatives = result.select { |num| num.negative? }
		raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

		result.sum
	end
end

