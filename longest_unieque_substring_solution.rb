def longest_unique_substring(string)
  # Convert the string to lowercase to ensure uniformity
  string = string.downcase
  # Initialize variables for sliding window
  start_index = 0
  max_length = 0
  char_index_map = {}

  # Iterate through each character in the string
  string.chars.each_with_index do |char, end_index|
    # If the character is already seen and is within the current window
    if char_index_map.key?(char) && char_index_map[char] >= start_index
      # Move the start_index past the last seen character
      start_index = char_index_map[char] + 1
    end

    # Update the character's latest index
    char_index_map[char] = end_index
    # Calculate the max length of unique substring seen so far
    max_length = [max_length, end_index - start_index + 1].max
  end

  max_length
end
