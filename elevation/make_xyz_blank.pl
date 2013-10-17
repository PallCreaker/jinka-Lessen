#!/usr/bin/perl
#データの加工とその視覚化 step1 (http://glesbe.org/data_data2graph.php) 
# 9×10のcsvデータをgnuplot出力用に並び替えるスクリプト
# 2008-06-05

#ファイルオープン
open(IN,"<./elevation.csv") or die;
open(OUT,">./elevation.txt") or die;

$y = 0;	# 行
$x = 0;	# 列

for($y =  ; $y <    ; $y     ) {
	$line = <IN>;
	chomp $line;
	@data = split(/,/, $line);
     
	for(				) {
	
	}
	
	print OUT "\n";
	
}

close(IN);
close(OUT);