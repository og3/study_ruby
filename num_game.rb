def intro
    puts "数当てゲームを開始します。
このゲームは正解となる数の最大値と最小値を設定し、その数を如何にミスなく当てるか、というものです。
あんまり面白くないですね。。
"
end

def set_max_answer
    loop do
        puts "正解となる数の最大値を入力してください。"
        $max_answer = gets.to_i
        if $max_answer > 0
            puts "あなたが設定した最大値は#{$max_answer}です。"
            break
        else
            puts "最大値は0より大きい値にしてください。"
        end
    end
end

def set_min_answer
    loop do
        puts "次に、正解となる数の最小値を入力してください。"
        $min_answer = gets.to_i
        if $max_answer <= $min_answer
            puts "最小値は最大値で設定した数より小さい数にしてください。"
        else
            puts "あなたが設定した最大値は#{$min_answer}で、正解となる数は#{$min_answer}~#{$max_answer}のうちのいずれかの数になります。"
            $answer = rand($min_answer..$max_answer)
            break
        end
    end
end

def guess_num
    user_answer = []
    count = 0
    loop do
        puts "解答を入力してください。"
        num = gets.to_i
        
        if $answer == num
            puts "正解です! あなたは正解までに#{count} 回はずれを出しました。"
            break
        elsif $answer > num
            puts "答えはそれより大きいです!"
            puts "正解のレンジ：#{$min_answer}~#{$max_answer}"
            user_answer << num
            puts "あなたの解答: #{user_answer}"
            count += 1
        elsif $answer < num
            puts "答えはそれより小さいです！"
            puts "正解のレンジ：#{$min_answer}~#{$max_answer}"
            user_answer << num
            puts "あなたの解答: #{user_answer}"
            count += 1
        end
      end
end

# メソッド呼び出し
intro
set_max_answer
set_min_answer
guess_num
