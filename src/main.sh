#!/bin/bash

#Playerのカード
Pcard=0;

#CPUのカード
Ccard=0;

# 1~13の数字が入った配列を生成
array=();
for((i=0; i < 12; i++));
do
array[$i]=$(( $i + 1));
done

# シャッフル関数
shuffle() {
local i tmp size max rand

size=${#array[*]}
max=$(( 32768 / size * size ))

for ((i=size-1; i>0; i--)); do
while (( (rand=$RANDOM) >= max )); do :; done
rand=$(( rand % (i+1) ))
tmp=${array[i]} array[i]=${array[rand]} array[rand]=$tmp
done
}
# カードのシャッフル
shuffle

#先攻後攻の乱数
#0ならPlayerが先行,1ならCPUが先行
#カードを引く処理を関数化して、乱数の結果によって処理の順序を決める
first=$((RANDOM % 2))

#先攻がPlayerの場合
if [ $first = 0 ];then
  Player
else
  CPU
fi

#後攻がCPUの場合
if [ $first = 1 ];then
  CPU
else
  Player
fi


#main処理
