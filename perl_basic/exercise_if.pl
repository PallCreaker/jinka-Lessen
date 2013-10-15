#!/usr/bin/perl
use strict;
use warnings;
use utf8;
# -----------------
# forループとif文を使った、繰り返し作業と分岐
# -----------------

# 使用するデータを配列に入れておきます。
my @data = (2,9,0,7,5,0,3,7);
my $count = @data; #=>8
my $sum = 0;
# for my $s (@data) {	# forループを使ってすべての配列の要素にアクセスする。
for(my $n=0; $n < $count; $n++){
	my $data =  @data[$n];
	if ($data > 3) {	# 3より大きい値だったら、出力する
		print "s= ".$data."\n";
		$sum = $sum + $data;
	}
	if ($data < 5) {	# 5以下の値だったら、10足して出力する
		my $s_10 = $data + 10;
		print "s_10= ".$s_10."\n";
	}
}

print 'sum= '.$sum,"\n";
my $average = $sum/@data;
print 'average= '.$average,"\n";




### 練習問題
### スクリプトを修正し、次の問題をやってみましょう。
# 1) 3より大きい値を積算して見みましょう。
# 2) 3より大きい値の平均を求めてみましょう。
# 3) この１行のデータの標準偏差を求めてみましょう。 そのとき、0の値は除いてください。
# 4) 0よりも大きく、5以下の値を積算してみましょう。
