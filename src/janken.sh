#!/bin/bash

#playerの出し手
read -p "じゃんけん(g/c/p):" pd

#playerの出し手を数字に変換
p=0;
case $pd in
   'g') p='グー';;
   'c') p='チョキ';;
   'p') p='パー';;
esac


#CPUの出し手
cd=$((RANDOM%3))

echo $cd
