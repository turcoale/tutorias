# no te preocupes por esta linea, más tarde la vas a entender
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

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

  it 'return the max sum of 11 ' do
    expect(max_sum([2, 5, 6, 5, 3])).to eq 11
  end
  
  it 'return the missing number' do
    expect(max_sum([8,1,2,3,4,5,6,7])).to eq(8 + 3 + 5 + 7)
  end

  it 'return the missing number' do
    expect(max_sum([1, -2, 999997, 999996, 0])).to eq(999997 + 1)
  end

end
