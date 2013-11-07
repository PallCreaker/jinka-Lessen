#!/usr/bin/perl
# (3) 秋に降雪した後の島の標高をgnuplotを使い地図形式で表示してください。

open (IN, "< kadai1.csv") or die;
open (AUTUMN, "< snow/snow_autumn.csv") or die;
open (OUT,"> origin2.txt") or die;   # 書き出し用のファイルハンドラを設定

$x=0;
$y=0;

while ( $line = <IN> ) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line;
    @data = split(/,/,$line);
    $line2 = <AUTUMN>;
    chomp $line2;
    @at_snow = split(/,/,$line2);
    $sum = 0;
    $col = @data;

    for($x=0; $x<$col; $x++) {
    	if($data[$x] == -9) {
    		print OUT $x."\t".$y."\t".$data[$x]."\n";
    	} else {
    		print OUT $x."\t".$y."\t".$data[$x] + $at_snow[$x]."\n";
    	}
	 }
	 print OUT "\n";
    $y++;
}

close(IN);
close(OUT);
close(AUTUMN);