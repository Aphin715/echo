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

