#!/usr/bin/perl

# 外部ファイルのデータを読み込む
open (IN, "< duerer.csv") or die;



while ($line=<IN>) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line;
    @data = split(/,/,$line);

	for($x=0; 			){
	
											# 2次元配列に入れる（ここが重要）

		print $data_2D[$y][$x], "\t";

		}

		
		$y++

}

close IN;
