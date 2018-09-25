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

echo $p

#CPUの出し手
