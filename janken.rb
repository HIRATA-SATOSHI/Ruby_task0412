# require 'byebug'
class Player
    def hand
     puts "数字を入力してください。"
     puts "0:グー, 1:チョキ, 2:パー"
     input_hand = gets.chomp
     input_hand = input_hand.to_i
       while true
         if input_hand == 0 || input_hand  == 1 || input_hand  == 2 
           return  input_hand
         else
           puts "もう一度数字を入力してください"
           puts "0:グー, 1:チョキ, 2:パー"
           break    # 無限Loopが続いたため追加
         end
       end
    end
  end
  
  class Enemy
    def hand
      enemy_hand = rand(3)
    end
  end
  
  class Janken
    def pon (player_hand, enemy_hand)
      janken = ["グー", "チョキ", "パー"]
      if (player_hand - enemy_hand +3) % 3 == 0
        puts "相手の手は#{janken[enemy_hand]}です。あいこです。"
        return true
      elsif (player_hand - enemy_hand +3) % 3 == 2
        puts "相手の手は#{janken[enemy_hand]}です。あなたの勝ちです"
        return false
      elsif (player_hand - enemy_hand +3) % 3 == 1
          # 「あなたの負けです」を出力します。
        puts "相手の手は#{janken[enemy_hand]}です。あなたの負けです"
        return false
      else
        puts "0~2の数字を入力してください"
        return true  
      end
    end        
  end  
  # byebug
  
  player = Player.new
  enemy = Enemy.new
  janken = Janken.new
  
  #じゃんけんのメソッドが起動される
  janken.pon(player.hand, enemy.hand)