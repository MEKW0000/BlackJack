#!/bin/bash

#playerの出し手
read -p "じゃんけん(g/c/p):" pd

#playerの出し手を数字に変換
#0がグー、1がチョキ、2がパー
case $pd in
   'g') pd='グー';;
   'c') pd='チョキ';;
   'p') pd='パー';;
esac


#CPUの出し手
#0がグー、1がチョキ、2がパー
cd=$((RANDOM%3));
case $cd in
  '0') cd='グー';;
  '1') cd='チョキ';;
  '2') cd='パー';;
esac

#じゃんけん処理
#playerがグーの時
if [ $pd = $cd ];then
  echo 'あいこです。'
elif [ $pd = 'グー' ] && [ $cd = 'チョキ'];then
  echo 'playerの勝ちです。'
elif [ $pd = 'チョキ'] && [ $cd = 'パー'];then
  echo 'playerの勝ちです。'
elif [ $pd = 'パー'] && [ $cd = 'グー'];then
  echo 'playerの勝ちです。'
else
  echo 'playerの負けです。'
  fi
