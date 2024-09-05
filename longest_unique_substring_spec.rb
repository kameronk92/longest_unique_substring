require './longest_unique_substring.rb'

RSpec.describe 'longest_unique_substring' do
  it 'counts the number of characters in the longest substring with all unique characters' do
    expect(longest_unique_substring('aBcabcbb')).to eq(3)
  end

  it 'case where longest substring is shorter than num unique characters' do
    expect(longest_unique_substring('abAccbb')). to eq(2)
  end
end
