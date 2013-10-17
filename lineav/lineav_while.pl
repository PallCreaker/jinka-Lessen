#!/usr/bin/perl
# CSV形式のデータファイルを使用して行の平均を出力するスクリプト

open (IN, "< test_data9-10.csv") or die;
open (OUT,"> test_while_ave.out") or die;   # 書き出し用のファイルハンドラを設定

while ($line = <IN>) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line;
    @data = split(/,/,$line);
    $count = @data;
    $sum = 0;
    for (my $i = 0; $i < $count; $i++) {
    	$sum += $data[$i];
    }
    $p++;
    print $p.":".$sum / $count,"\n";
    print OUT ;   # OUTに書き出す
}

close(IN);
close(OUT);