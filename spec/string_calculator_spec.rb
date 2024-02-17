require './lib/string_calculator.rb'

describe StringCalculator do
	context "when empty string is given" do
		it "should return zero" do
			calculator = StringCalculator.new
			expect(calculator.add("")).to eql(0)
		end
	end

	context "when string contains single number" do 
		it "should return the number itself" do 
			calculator = StringCalculator.new
			expect(calculator.add("1")).to eql(1)
			expect(calculator.add("3")).to eql(3)
		end
	end
end
