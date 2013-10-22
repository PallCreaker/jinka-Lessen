#!/usr/bin/perl
# (3) "test10-10.csv"の(列,行)が(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10)である地点の要素の合計を求め，その結果をターミナル上に出力する。

#ファイルオープン
open(IN,"<./test10-10.csv") or die;

$x=0;
while ($line = <IN>) {
	chomp $line;
	@data = split(/,/,$line);
    $count = @data;
    $sum += $data[$x];
	$x++;
}
print $sum."\n";
close(IN);
