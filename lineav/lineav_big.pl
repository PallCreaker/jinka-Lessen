#!/usr/bin/perl

# 1度グリッドの地球データファイル（ctmp6190_1-grid.csv）を使用して行の平均を出力するスクリプト


open (IN, "< ctmp6190_1-grid.csv") or die;
open (OUT,"> ctmp6190_1-grid.out") or die;

$count =	;   # 地球の緯度は90〜-90

while ($line=<IN>) {
    chomp $line;
    @data = split(/,/,$line);
    $kosuu = @data;

    for ($x=0; $x<$kosuu; $x++) {
       if (				) {   # 海じゃなかったら足す


       }
    }
    
    if (				) {
    }   # 陸地が一点もない場合は？
    else {
    }
    
    print OUT ;
    
 
 
 
}
 
close(IN);
close(OUT);