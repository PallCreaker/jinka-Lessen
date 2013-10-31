#!/usr/bin/perl
# (2) 同じ緯度の陸域の地点の中で，1月の気温が氷点下（0°C以下）である地点が何%を占めるかを緯度ごとに求め，その結果をターミナル上に出力するプログラムを作成してください。なお，出力形式は，1列目に緯度（90,89,・・・,-89），2列目に割合（単位は不要）となるようにしてください（陸域が全くない緯度の場合は"-9999"と表示）。
open (IN, "< ctmp6190-Jan.csv") or die;
$i=0;
$x=0;
$y=90;#緯度

while ($line=<IN>) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line;
    @data = split(/,/,$line);
    $under_sum = 0;
    $up_sum = 0;
    $col = @data;	#横の列数を読み込む
    for ($x=0; $x<$col; $x++) {

        if($data[$x] == -9999 ){#追加
            next;                 #追加
        }elsif($data[$x] <= 0) {
	    	$under_sum++;	#平均を正確に出すため、0度以下の陸の数を計算する
    	} else {
    		$up_sum++; #0度より高い陸の数を計算
    	}
	 }

	 if($under_sum + $up_sum == 0) {
	 	$ratio = 0;	#全部海（-9999）だったら割合を0にする
	 } else {
        $ratio = $under_sum/($under_sum + $up_sum)*100; #陸があれば平均を計算する
	}
    print $y."\t".$ratio."\n";
     $y--;
}

close(IN);
