#!/bin/bash

#playerの出し手
read -p "じゃんけん(g/c/p):" pd

#playerの出し手を数字に変換
#0がグー、1がチョキ、2がパー
p=0;
case $pd in
   'g') p='グー';;
   'c') p='チョキ';;
   'p') p='パー';;
esac


#CPUの出し手
#0がグー、1がチョキ、2がパー
cd=$((RANDOM%3));
c=0;
case $cd in
  '0') c='グー';;
  '1') c='チョキ';;
  '2') c='パー';;
esac


#判定
echo '----------------------'
echo 'player:'$p
echo 'CPU:'$c

#じゃんけん処理
#playerがグーの時
if [ $p = $c ];then
  echo 'あいこです。'
elif [ $p = 'グー' ] && [ $c = 'チョキ' ];then
  echo 'playerの勝ちです。'
elif [ $p = 'チョキ' ] && [ $c = 'パー' ];then
  echo 'playerの勝ちです。'
elif [ $p = 'パー' ] && [ $c = 'グー' ];then
  echo 'playerの勝ちです。'
else
  echo 'playerの負けです。'
  fi
