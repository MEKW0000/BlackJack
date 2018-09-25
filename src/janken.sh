#!/bin/bash

#playerの出し手
read -p 'じゃんけん(g/c/p):'pd

#playerの出し手を数字に変換
case $pd in
  g') pd='グー';;
  c') pd='チョキ';;
  p') pd='パー';;
esac

echo $pd;
