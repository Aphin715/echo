def playback (say)
  return "You said: #{say}"
end


puts "What do you want to say"

input = gets.chomp

# if i enter nothing it should output "Ok, fine"
if input == "Nothing!"
  puts "Ok, fine!"
elsif input == "I have something prepared"
  puts "Ok, where can I find what you want to say?"
  filename=gets.chomp
  puts "Loading #{filename}"
  speech = []
  File.open(filename, "r").each_line {|line| speech << line}

  puts playback speech[0]
  speech[1..-2].each {|x| puts "Then, you said: #{x}"}
  puts "Finally you said: #{speech[-1]}"
  puts "Phew! Glad you got all #{speech.length} of those things off your chest!"
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

