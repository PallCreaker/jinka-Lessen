#!/usr/bin/perl
use strict;
use warnings;
use utf8;
# -----------------
# 2重にforを使う
# -----------------

my $line_count = 0;
open(FH, "< TestData_8-9.dat") or die;	# データファイルを開く <FH>で
#dat file改行の回数を出す
while ( <FH> ) {
	$line_count += ($_ =~ tr/\n//);
}
close(FH);
open(FH, "< TestData_8-9.dat") or die;
for ( my $i=0; $i < $line_count; $i++) {
	my $line = <FH>; # 1行ずつを$lineに入れる
	chomp $line; #改行を消す
	my @array = split(/,/,$line);	# データを配列に入れる

	# for (					) {
	# 	$sumrow += $array[$n];	# 積算
	# }
	# print "sum row:",$sumrow,"\n";
	# $sumrow = 0;	# $sumrowの初期化

	print $array[4],"\n";	# 一行ずつの4番目の要素を出力
	$sumcol += $array[$i];	# $sumcolに要素を足す
}

close(FH);
### 実習
# 1行目と3行目の4番目を足し算する
# 1行目と3行目の各行において、3番目から6番目を足し算する
# 1行目と3行目の各行の積算を求める
# 各行の積算を求める
# 2行目の要素全てを縦一列の形で表示してみる

### 練習問題　
# スクリプトを修正し、次の問題をやってみましょう。
#  1) 偶数行の値を積算し、出力しましょう。
#  2) 奇数行にある偶数の値のみを積算し、出力しましょう。
#  3) 奇数行にある5以下の値を積算し、出力しましょう。

