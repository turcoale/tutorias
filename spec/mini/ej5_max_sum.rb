# -*- coding: utf-8 -*-
# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)

require "minitest/autorun"

begin
  require 'max_sum'
rescue LoadError
  puts <<-INSTRUCTIONS
    Max sum
    You are given a list of integer numbers [a1, a2, ..., an] and are required to find the subarray with the maximum sum that doesn't contain consecutive elements.
    Example input:
    [2, 5, 6, 5, 3]
    Example output:
    11
    Explanation:
    2 + 6 + 3

INSTRUCTIONS
  raise
end

describe '#max_sum' do

  it 'returns the max sum that doesnt contain consecutive elements' do
    max_sum([2, 5, 6, 5, 3]).must_equal 11
  end

  it 'returns the max sum, even if the ends are big' do
    max_sum([3, 2, 2, 9]).must_equal 12
  end  
end
