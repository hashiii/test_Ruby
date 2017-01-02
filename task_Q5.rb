@cnt = 0;
def change(target,coins,usable)
  #puts coins.size
  p coins
  coin = coins.shift#配列から一個取り出します
  puts "今のコインは"
  puts coin
  if coins.size == 0 then#配列の数がゼロの時、
    p coins
    puts "配列がゼロの時"
    puts target
    puts target/coin
    puts "ゆーさぼーは"
    puts target
    puts "悪"
    puts coin
    puts "は"
    puts usable
    @cnt += 1 if target / coin <= usable#最終的にカウントするのはここだけ
    puts @cnt
    puts "sususususususu"
  else#配列がゼロでない時=
    (0..target/coin).each{|i|#1000/500は2、２通りしかないっってこと
      #exaple:1000/500=2のかずだけeach
      #i=2
      p coin
      puts "今回のターゲット"
      puts target
      puts "配列がゼロでない時"
      puts i
      puts "↑今の何かのコインの枚数"
      puts target - coin * i
      puts target/coin
      puts "nyaa"
      p coins.clone
      puts usable -i#どうして枚数分引くの？
        change(target - coin * i , coins.clone ,usable -i)
    }
  end
end


change(1000,[500,100,50,10],15)
puts @cnt
# 500円玉二枚の件で考えてみよう。
puts 1000 - 500 * 3
#何を意図して書いたのか？
#作者の気持ちになること
