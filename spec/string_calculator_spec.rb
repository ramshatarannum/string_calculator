require './lib/string_calculator.rb'

describe StringCalculator do

	before(:each) do 
		@calculator = StringCalculator.new 
	end

	context "when empty string is given" do
		it "should return zero" do
			expect(@calculator.add("")).to eql(0)
		end
	end

	context "when string contains single number" do 
		it "should return the number itself" do 
			expect(@calculator.add("1")).to eql(1)
			expect(@calculator.add("3")).to eql(3)
		end
	end

	context "when negative numbers are given" do
		it "should raise an exception" do
			expect { @calculator.add("-1,-2") }.to raise_error(ArgumentError, "negative numbers not allowed -1,-2")
		end
	end

	context "when new line is between the number" do
		it "allow new line and add numbers" do 
			expect(@calculator.add("1\n2,3")).to eq(6)
		end
	end

	context "if there are multiple delimiters in string" do
		it "should handle all delimiters and give sum of numbers" do 
			expect(@calculator.add("//;\n1;2")).to eql(3)
		end
	end
end
