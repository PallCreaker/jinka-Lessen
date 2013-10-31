#!/usr/bin/perl
# (1) 緯度方向（同じ緯度）1月の気温の平均を求め，その結果をターミナル上に出力するプログラムを作成してください。なお，出力形式は，1列目に緯度（90,89,・・・,-89），2列目に気温の平均となるようにしてください（陸域が全くない緯度の場合は"-9999"と表示）。

open(IN,"<./ctmp6190-Jan.csv") or die;
# open(OUT,">./kadai5-1.txt") or die;

$y = 0;	# 行(ー)
$x = 0;	# 列(｜)
$lat = 90;
while( $line = <IN> ){
	chomp $line;
	@y_data = split(/,/, $line);
	$y_count = @y_data; #360
	$sum = 0;
	$land_sum = 0;
	for($x=0; $x < $y_count; $x++ ) {
		if ($y_data[$x] == "-9999") {
			$y_data[$x] = 0;
		}else{
			$land_sum++;#陸の和をもとめる
		}
		$sum += $y_data[$x];
	}
	if($sum == 0){
		$tmp_sum = "-9999";
	}else{
		$tmp_sum = $sum / $land_sum;
	}
	print $lat . "\t" . $tmp_sum."\n";
	# $i++;
	$y++;
	$lat--;
}
close(IN);
