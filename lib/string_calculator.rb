class StringCalculator
	def add(number)
		#for empty string
		return 0 if number == ""

		special_character = ','

		#for different delimiters
		result = number.gsub!(/\/\/|;/, special_character)

		#handling new line
		result = number.gsub!("\n", special_character)

		#to handle single number in string 
		result = number.split(special_character).map(&:to_i)

		#if number is negative
		negatives = result.select { |num| num.negative? }
		raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

		result.sum
	end
end

