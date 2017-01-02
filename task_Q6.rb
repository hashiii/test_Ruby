#ループしているかチェック
def is_loop(n)
  check = n * 3 + 1
  #1になるまで数字を変化させることを繰り返す
  while check != 1 do#条件式がtrueの間は実行され続けます
    check = check.even? ? check / 2 : check * 3 + 1#パット見わかりづらいですけど3項演算子ですね.偶数なら、、、そうでないなら、、、
    return true if check == n# これに該当した場合は処理を抜けます
  end
  return false
end

#2~10000まで偶数についてチェックする
#初期値は偶数と決まっているので2から2ずつstepしていく
puts 2.step(10000,2).count{|i|#step.....100000になるまで2ずつ足されていく #count にブロック｛｝を渡すことでその中がtrueならカウントしてその数を返す
    is_loop(i)
}
