# README

* Ruby version 2.7.4
* gem installed 'rspec', '~> 3.13'

# String Calculator

## Overview

String Calculator is a simple Ruby class that adds numbers passed as a string. It handles various scenarios such as different delimiters, new lines between numbers, and negative numbers.

## Usage

To use the String Calculator class:

1. Instantiate a `StringCalculator` object.
2. Call the `add` method with a string of numbers.

Example:

```ruby
load './lib/string_calculator.rb'
calculator = StringCalculator.new
result = calculator.add("1,2,3")
puts result
# Output: 6

