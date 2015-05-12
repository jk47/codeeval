

File.open(ARGV[0]).each_line do |line|
  break if line == nil
  sent, word = line.split(",")
  puts "Sentence: #{sent}, Word: #{word}"
  index = sent.rindex(word)
  puts "Index #{index}"
  puts "Minus" + (sent.length - word.length).to_s
  if index == sent.length - word.length
    puts 1
  else
    puts 0
  end

end
