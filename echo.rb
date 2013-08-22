def playback (say)
  return "You said: #{say}"
end

puts "What do you want to say"

input = gets.chomp

# if i enter nothing it should output "Ok, fine"
if input == "Nothing!"
  puts "Ok, fine!"
#if I enter I have a lot to say it should output 'i don't have time for that right now'
elsif input == "I have a lot to say"
  puts "I don't have time for that right now"
else
  puts playback(input)
end
