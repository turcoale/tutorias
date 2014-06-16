# -*- coding: utf-8 -*-
# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)

require "minitest/autorun"

begin
  require 'sqrt'
rescue LoadError
  puts <<-INSTRUCTIONS
    Sqrt
    Given an integer number N, compute its square root without using any math library functions and return the result. Please round the result downwards to the nearest integer (e.g both 7.1 and 7.9 are rounded to 7)
    Example input:
    N: 17
    Example output:
    4

INSTRUCTIONS
  raise
end

describe '#sqrt' do

  it 'return the round sqrt of 4' do
    sqrt(4).must_equal 2
  end

  it 'return the round sqrt of 16' do
    sqrt(16).must_equal 4
  end
  
  it 'return the round sqrt of 17' do
    sqrt(17).must_equal 4
  end
  
  it 'return the round sqrt of 101' do
    sqrt(101).must_equal 10
  end

end
