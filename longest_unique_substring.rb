def longest_unique_substring(string)
  string = string.downcase

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

    if n > m 
      n
    else
      m
    end
  end
end
