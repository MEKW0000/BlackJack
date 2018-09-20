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
SE=$((RANDOM % 2))
if [ $ SE = 0 ];then
  SEKO1=$Player
else
  SEKO2=$CPU
fi

#Playerの1枚目のカード
Pcard1=${array[0]};

#CPUの1CPUの1枚目のカード
Ccard1=${array[1]};

#出力
echo "ゲーム開始 : 先攻"$SEKO1
echo $SEKO1 : $Pcard1
