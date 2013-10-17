#!/usr/bin/perl
# データの加工とその視覚化 step4  (http://glesbe.org/data_data2graph.php) 
# 標高データ(elevation3.csv)に積雪量データ(snow_cover.csv)を足すスクリプト
# 2008-06-05

#ファイルオープン
open(IN1,"<./elevation3.csv") or die;
open(IN2,"<./snow_cover.csv") or die;
open(OUT,">./elevation_snow.txt") or die;

$y = 0;	# 行
$x = 0;	# 列

for($y=0; $y<10; $y++) {

	$line1 = <IN1>;
	chomp $line1;
	@elevation = split(/,/, $line1);
	         



     
	for($x=0;$x<16;$x++) {
             		
		$elevation_snow =
             



		#gnuplot出力用
		print OUT $x,"\t",$y,"\t",$elevation_snow,"\n";
	}
	
	print OUT "\n";
	
}
close(IN1);
close(IN2);
close(OUT);