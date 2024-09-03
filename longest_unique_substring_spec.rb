require './longest_unique_substring.rb'

RSpec.describe 'longest_unique_substring' do
  it 'counts the number of characters in the longest substring with all unique characters' do
    expect(longest_unique_substring('abcabcbb')).to eq(3)
  end
end
