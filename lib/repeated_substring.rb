class RepeatedSubstring
  def find_repeated_substring(string)
    substring_length = 2
    longest_substring = "NONE"
    (2..(string.length/2)).each do |substring_length|
      new_longest_substring = string_has_substring_of_length(string,substring_length) 
      if new_longest_substring == "NONE" or new_longest_substring.include?(" ")
        break;
      end
      longest_substring = new_longest_substring
   end
   longest_substring
  end

  def string_has_substring_of_length(string, searchLength)
     lastsubstring = "NONE"
     (0..(string.length-1-searchLength)).each do |startchar|
        substring  = string[startchar..(startchar+searchLength-1)]
        if string.scan(substring).length > 1
          lastsubstring =  substring
        end
     end
     lastsubstring
  end 
def find_repeated_substring_file(file_path)
  File.open(file_path).read.each_line.map { |line| find_repeated_substring(line) }
end

end
