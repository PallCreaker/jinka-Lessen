#!/usr/bin/perl
# (4) 同じ緯度，経度における1月の気温と7月の気温の平均を求め，その結果を"average_Jan-Jul.out"というファイルに出力するプログラムを作成してください。なお，出力形式は，1列目に経度（0,1,・・・,359），2列目に緯度（90,89,・・・,-89），3列目に気温の平均となるようにしてください（海は"-200"と表示）。
use warnings;

open (IN1, "< ctmp6190-Jan.csv") or die;
open (IN2, "< ctmp6190-jul.csv") or die;
open (OUT, " > average_Jan-Jul.out") or die;

$x=0;
$y=90;

while ($line1=<IN1>) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line1;
    @jan = split(/,/,$line1);

    $line2 = <IN2>;
     chomp $line2;
    @jul = split(/,/,$line2);
    $col = @jan;	#横の列数を読み込む

    for ($x=0; $x<$col; $x++) {

   		if($jan[$x] != -9999 && $jul[$x] != -9999) {
   			$ave[$x] =  ($jan[$x] + $jul[$x]) / 2;
    	} else {
    		$ave[$x] = -200;
    	}
    print OUT $x,"\t",$y,"\t",$ave[$x],"\n";
	 }
	# print OUT "\n";
    $y--;

}
close(IN1);
close(IN2);
close(OUT);