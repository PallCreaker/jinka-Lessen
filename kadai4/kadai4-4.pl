#!/usr/bin/perl
# (3) 標高が2以下の地点が「浸水」した（つまり，「海」になった）場合の地図をgnuolotで作成してください（さらに，データを加工するときに使用したスクリプトファイルも提出してください）。
open(IN,"<./elevation3.csv") or die;
open(OUT,">./elevation5.txt") or die;

$y = 0;	# 行(ー)
$x = 0;	# 列(｜)

# for($y=0; $y < 100; $y++ ) {
while( $line = <IN> ){
	chomp $line;
	@y_data = split(/,/, $line);

	$y_count = @y_data;
	for($x=0; $x < $y_count; $x++ ) {
		if ($y_data[$x] == "-9") {
			$y_data[$x] = 0;
		}
		if ($y_data[$x] <= 2) {
			$y_data[$x] = 0;
		}
		print OUT $x."\t".$y."\t".$y_data[$x],"\n";
		# print $x."\t".$y."\t".$y_data[$x],"\n";
	}
	print OUT "\n";
	$y++;
}


close(IN);
close(OUT);