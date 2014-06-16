# -*- coding: utf-8 -*-
# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)

require "minitest/autorun"

begin
  require 'fizz_buzz'
rescue LoadError
  puts <<-INSTRUCTIONS
    Given an integer number N
    Your task is to write a method that return an array with the numbers from
    1 to N with the following restrictions:

      - for multiples of three print “Fizz” instead of the number.

      - for the multiples of five print “Buzz” instead of the number.

      - for numbers which are multiples of both three and five print “FizzBuzz”
INSTRUCTIONS
  raise
end

describe '#fizz_buzz' do

  it 'return a single 1' do
    fizz_buzz(1).must_equal [1]
  end

  it 'replace 3 with fizz' do
    fizz_buzz(3).must_equal [1, 2, 'Fizz']
  end

  it 'replace 5 with fizz' do
    expectfizz_buzz(5).must_equal [1, 2, 'Fizz', 4, 'Buzz']
  end

  it 'replace 15 with fizz' do
    fizz_buzz(915).must_equal [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz' ]
  end

end
