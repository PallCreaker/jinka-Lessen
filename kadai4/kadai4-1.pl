#!/usr/bin/perl
# (1) "test10-10.csv"の要素の中で偶数の個数を求め，その結果をターミナル上に出力する。

#ファイルオープン
open(IN,"<./test10-10.csv") or die;

while ($line = <IN>) {
	chomp $line;
    @data = split(/,/,$line);
    $count = @data;

    for (my $i = 0; $i < $count; $i++) {
	    if($data[$i] % 2 == 0) {
	    	$even_sum += 1;
	    }
    }
}
print "偶数の個数=".$even_sum,"\n";

close(IN);
