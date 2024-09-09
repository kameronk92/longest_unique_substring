def longest_unique_substring(string)
  string = string.downcase
  
  current_max = 0
  current_count = 0

  max_possible = string.length
  count_unique_char = string.split("").uniq.length
  unique_char_string = string.split("").uniq.join

  if string.include?(unique_char_string)
    count_unique_char
  else
    n = 0 
    m = 0
    while n < count_unique_char do
      if string.include?(unique_char_string[0..n])
        n += 1
      elsif string.include?(unique_char_string[m..-1])
        m += 1
      else
        break
      end
    end
    # logic comparing n and m, reporting greater
    n
  end
end
