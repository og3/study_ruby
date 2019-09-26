# study_ruby

# 数当てゲーム＠ドットインストール
https://dotinstall.com/lessons/basic_ruby_v4/49701
```
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
```
こいつをまともでまぁまぁ面白いものにする

## 改修案
- 最初にゲームの説明をする
いくつからいくつの間の数を当ててください。みたいな感じで。
- 正解のレンジを設定できるようにする
- 間違えた時に数が少ないのか多いのかを教えてあげる
- これまでに答えた数字とそれが答えより大きかったのか、小さかったのかどうかを出す
- まだ答えていない数字を出す
- 間違えられる回数に制限をつける
- あきらめるコマンドを出す


