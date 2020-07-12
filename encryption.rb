def s_check(s_input)
  return (s_input == "0") || (s_input.to_i != 0)
end

def int_check(input_string)
  return (input_string != "0") && (input_string.to_i == 0)
end

puts "Hello! Please enter the sentence that you would like to be encrypted"
query = gets.chomp
if s_check(query)
  puts "You did not enter a String!"
else
  puts "Great. Now please enter a shift factor"
  shift_factor = gets.chomp
  if int_check(shift_factor)
   puts "You did not enter a number!"
  else 
   puts "Yes!"
  end
end



      
