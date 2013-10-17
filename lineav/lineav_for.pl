#!/usr/bin/perl

# 9×10のデータファイルを使用して行の平均を出力するスクリプト

open (IN,"< test_data9-10.csv") or die;
open (OUT,"> test_for_ave.out") or die;   # 書き出し用のファイルハンドラを設定

for (				) {
    $line= <IN>;
    chomp $line;
    @data = split(/,/,$line);

    for (				) {
   
    }
   
 }
 
 close(IN);   # ファイルを閉じる
 close(OUT);