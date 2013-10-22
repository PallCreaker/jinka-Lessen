#!/usr/bin/perl
# (2) "test10-10.csv"の各行の要素の合計と平均を求め，その結果を"sum_average.out"というファイルに出力する（さらに，出力したファイルも提出してください）。
#ファイルオープン
open(IN,"<./test10-10.csv") or die;
open(OUT,">./sum_average.out") or die;

$p=0;
while ($line = <IN>) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line;
    @data = split(/,/,$line);
    $count = @data;
    $row_sum = 0;
    for (my $i = 0; $i < $count; $i++) {
    	$row_sum += $data[$i];
    }
    $p++;
    print OUT $p."行目の合計:".$row_sum.", 平均:".$row_sum / $count,"\n";
}
close(IN);
close(OUT);