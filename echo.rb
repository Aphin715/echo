def playback (say)
  return "You said: #{say}"
end

puts "What do you want to say?"

input = gets.chomp

# if i enter nothing it should output "Ok, fine"
if input == "Nothing!"
  puts "Ok, fine!"
#if I enter I have a lot to say it should output 'i don't have time for that right now'
elsif input == "I have a lot to say"
  puts "Ok, let's hear it!"
  sayings = []
  while (input=gets.chomp) != "done"
    sayings << input
  end
  puts playback sayings[0]
  sayings[1..-2].each {|x| puts "Then, you said: #{x}"}
  puts "Finally you said: #{sayings[-1]}"
  puts "Phew! Glad you got all #{sayings.length} of those things off your chest!"
else
  puts playback(input)
end
# input goes character by character to hash
character_counts = {}
input.each_char do |character|
  unless character_counts.has_key?(character) || character == " "
    character_counts[character] = 0
  end
  unless character == " "
    character_counts[character] += 1
  end
end

sorted_characters = character_counts.sort_by { |letter, number| number }

puts "'#{sorted_characters.to_a[-2][0]}' is the second most used character in what you said."
puts "'#{sorted_characters.to_a[-2][0]}' was used #{sorted_characters.to_a[-2][1]} times."