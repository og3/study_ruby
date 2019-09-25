# 数当てゲーム

answer = rand(10) + 1
count = 0

loop do
  print "Your guess? "
  num = gets.to_i
  count += 1
  
  if answer == num
    puts "Bingo! It took #{count} guesses!"
    break
  elsif answer > num
    puts "Bigger!"
  else
    puts "Smaller!"
  end
end
