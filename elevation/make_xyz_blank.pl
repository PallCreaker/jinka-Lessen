#!/usr/bin/perl
#データの加工とその視覚化 step1 (http://glesbe.org/data_data2graph.php)
# 9×10のcsvデータをgnuplot出力用に並び替えるスクリプト
# 2008-06-05

#ファイルオープン
# open(IN,"<./elevation.csv") or die;
# open(OUT,">./elevation.txt") or die;

open(IN,"<./elevation2.csv") or die;
open(OUT,">./elevation2.txt") or die;

# open(IN,"<./elevation.csv") or die;
# open(OUT,">./elevation.txt") or die;

$y = 0;	# 行(ー)
$x = 0;	# 列(｜)

for($y=0; $y < 100; $y++ ) {
	$line = <IN>;
	if ($line != '') {
		chomp $line;
		@y_data = split(/,/, $line);

		$y_count = @y_data;
		for($x=0; $x < $y_count; $x++ ) {
			if ($y_data[$x] == "-9") {
				$y_data[$x] = 0;
			}
			print OUT $x."\t".$y."\t".$y_data[$x],"\n";
			#debug  print $x."\t".$y."\t".$y_data[$x],"\n";
		}
		print OUT "\n";
	}
}

close(IN);
close(OUT);