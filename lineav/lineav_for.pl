#!/usr/bin/perl

# 9×10のデータファイルを使用して行の平均を出力するスクリプト

open (IN,"< test_data9-10.csv") or die;
open (OUT,"> test_for_ave.out") or die;   # 書き出し用のファイルハンドラを設定

# これは、微妙ですね。ダサい。
for ($i=0;$i < 100;$i++) {
	$line= <IN>;
	if ($line != "" ) {
	    chomp $line;
	    @data = split(/,/,$line);
	    $y_count = @data;
	    $sum = 0;
	    for ($x=0; $x < $y_count; $x++) {
	    	$sum += $data[$x];
	    }
	    print $sum / $y_count,"\n";
	 }
}
 close(IN);   # ファイルを閉じる
 close(OUT);