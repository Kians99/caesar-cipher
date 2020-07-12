def s_check(s_input)
  return (s_input == "0") || (s_input.to_i != 0)
end

def int_check(input_string)
  return (input_string != "0") && (input_string.to_i == 0)
end

def encryption(query, factor)
  encrypted = Array.new(query.length)
  query.each_byte do |char|
    if char >= 65 && char <= 90
      normalize = char - 65
      enc_key = normalize + factor
      final_value = (enc_key % 26) + 65
      encrypted.push(final_value.chr)	 
    elsif char >= 97 &&  char <= 122
      normalize = char - 97
      enc_key = normalize + factor
      final_value = (enc_key % 26) + 97  
      encrypted.push(final_value.chr)
    else 
      encrypted.push(char.chr)
    end
  end
  joined = encrypted.join
  return joined
end

puts "Hello! Please enter the sentence that you would like to be encrypted."
query = gets.chomp
if s_check(query)
  puts "You did not enter a String!"
else
  puts "Great. Now please enter a shift factor."
  shift_factor = gets.chomp
  if int_check(shift_factor)
   puts "You did not enter a number!"
  else 
   puts "Here is your encrypted message!"
   p encryption(query, shift_factor.to_i)
  end
end



      
