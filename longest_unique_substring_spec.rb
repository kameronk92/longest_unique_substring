require './longest_unique_substring.rb'

RSpec.describe 'longest_unique_substring' do
  it 'counts the number of characters in the longest substring with all unique characters' do
    expect(longest_unique_substring('aBcabcbb')).to eq(3)
  end

  it 'case where longest substring is shorter than num unique characters' do
    expect(longest_unique_substring('aAbbccbb')). to eq(2)
  end

  it 'case where entire string is a unique substring' do 
    expect(longest_unique_substring("abcdefghijklmnopqrstuvwxyz")).to eq(26)
  end
end
