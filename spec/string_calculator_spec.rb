require './lib/string_calculator.rb'

describe StringCalculator do
	context "when empty string is given" do
		it "should return zero" do
			calculator = StringCalculator.new
			expect(calculator.add("")).to eql(0)
		end
	end
end
