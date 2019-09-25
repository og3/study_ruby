$answer
$count = 0

def set_answer
    puts "数当てゲームを開始します。"
    puts "正解となる数の最大値を入力してください。正解は「0〜入力した数」となります。"
    max_answer = gets.to_i
    puts "あなたは#{max_answer}を入力したので、正解は「0〜#{max_answer}」となります。"
    $answer = rand(0..max_answer)
    puts $answer
end

def guess_num
    @user_answer = []
    loop do
        puts "解答を入力してください。"
        num = gets.to_i
        $count += 1
        
        if $answer == num
            puts "正解です! あなたは正解までに #{$count} 回かかりました。"
            break
        elsif $answer > num
            puts "答えはそれより大きいです!"
            puts "正解のレンジ：0〜#{$answer}"
            @user_anser << num
            puts "あなたの解答:"
            print @user_answer
        elsif $answer < num
            puts "答えはそれより小さいです！"
        end
      end
end
# メソッド呼び出し
set_answer
guess_num
