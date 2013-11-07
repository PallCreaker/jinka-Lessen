#!/usr/bin/perl
# (4) 1年が終わった後の島の標高をgnuplotを使い地図形式で表示してください。

open (IN, "< kadai1.csv") or die;
open (AUTUMN, "< snow/snow_autumn.csv") or die;
open (WINTER, "< snow/snow_winter.csv") or die;
open (SPRING, "< snow/snow_spring.csv") or die;
open (SUMMER, "< snow/snow_summer.csv") or die;
open (OUT,"> origin3.txt") or die;   # 書き出し用のファイルハンドラを設定

$x=0;
$y=0;

while ( $line = <IN> ) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line;
    @data = split(/,/,$line);

    $line2 = <AUTUMN>;
    chomp $line2;
    @aut_snow = split(/,/,$line2);

    $line3 = <WINTER>;
    chomp $line3;
    @win_snow = split(/,/,$line3);

    $line4 = <SPRING>;
    chomp $line4;
    @spr_snow = split(/,/,$line4);

    $line5 = <SUMMER>;
    chomp $line5;
    @sum_snow = split(/,/,$line5);

    $sum = 0;
    $col = @data;	#横の列数を読み込む

    for ($x=0; $x<$col; $x++) {
    	if($data[$x] == -9) {
    		print OUT $x."\t".$y."\t".$data[$x]."\n";
    	} elsif($data[$x] + $aut_snow[$x] + $win_snow[$x] +  $spr_snow[$x] + $sum_snow[$x] > $data[$x]) {
    		print OUT $x."\t".$y."\t".$data[$x] + $aut_snow[$x] + $win_snow[$x] +  $spr_snow[$x] + $sum_snow[$x]."\n";
    	} else {
    		print OUT $x."\t".$y."\t".$data[$x]."\n";
    	}
	 }
	 print OUT "\n";
    $y++;
}

close(IN);
close(OUT);
close(AUTUMN);