def longest_unique_substring(string)
  string = string.downcase
  
  current_max = 0
  current_count = 0

  max_possible = string.length
  count_unique_char = string.split("").uniq.length
  unique_char_string = string.split("").uniq.join

  if string.include?(unique_char_string)
    count_unique_char
  elsif string.include?(unique_char_string.chop)
    count_unique_char - 1
  else
  end
end
