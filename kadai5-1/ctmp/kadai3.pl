#!/usr/bin/perl
# (3) 全陸域の7月の気温の中で，最も高い値を求め，その結果（気温のみ）をターミナル上に出力するプログラムを作成してください。なお，その地点の緯度と経度は出力する必要はない（余力のある学生は出力してください）。

open (IN, "< ctmp6190-Jul.csv") or die;
#open (OUT,"> earth_data.txt") or die;   # 書き出し用のファイルハンドラを設定

$x=0;
$y=90;
$max = 0;

while ($line=<IN>) {  # $lineに一行ずつ入れつつ<IN>が存在するうちは繰り返す
    chomp $line;
    @data = split(/,/,$line);
    $col = @data;	#横の列数を読み込む

    for ($x=0; $x<$col; $x++) {
   		if($data[$x] > $max) {
	    	$max = $data[$x];
	    	$lat = $y;
	    	$lon = $x;
	    }
	}
    $y--;
}
print "緯度",$lat,"\t経度",$lon,"\t",$max,"\n";
close(IN);
