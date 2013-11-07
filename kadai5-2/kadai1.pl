#!/usr/bin/perl
# (2) (1)で作成した標高データをgnuplotを使い地図形式で表示してください。

open (IN, "< kadai1.csv") or die;
open (OUT,"> origin1.txt") or die;   # 書き出し用のファイルハンドラを設定

$x=0;
$y=0;

while ($line=<IN>) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line;
    @data = split(/,/,$line);
    $sum = 0;
    $col = @data;

    for ($x=0; $x<$col; $x++) {
    	print OUT $x."\t".$y."\t".$data[$x]."\n";
	 }
	 print OUT "\n";
    $y++;

}

close(IN);
close(OUT);