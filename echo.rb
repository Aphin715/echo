def playback (say)
  return "You said: #{say}"
end


puts "What do you want to say"

input = gets.chomp


puts playback(input)
