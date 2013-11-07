#!/usr/bin/perl

@data1 = (
#    0,1,2,3,4,5,6,7,8,9,
    [2,3,5,6,4,5,6,6,2,-9], # 0
    [1,4,1,3,4,6,8,2,1,9], # 1
    [9,4,9,0,9,7,7,6,5,3], # 2
    [3,9,9,0,0,0,9,0,9,9], # 3
    [2,9,7,0,9,5,9,0,5,2], # 4
    [9,4,9,0,9,6,9,5,9,2], # 5
    [9,0,6,8,9,7,8,5,2,4], # 6
    [4,0,9,9,0,4,0,2,9,3], # 7
    [3,0,9,7,0,9,7,2,6,2], # 8
    [1,4,5,2,9,9,3,9,5,9], # 9
);

@data2 = (
#    0,1,2,3,4,5,6,7,8,9,
    [0,2,5,7,1,-9,9,6,3,4], # 0
    [1,4,1,3,4,6,8,2,-9,9], # 1
    [9,4,9,0,9,7,7,6,5,3], # 2
    [3,9,9,0,6,8,2,0,3,4], # 3
    [2,9,7,0,8,5,9,0,5,2], # 4
    [1,2,6,5,9,7,9,5,9,2], # 5
    [3,4,6,8,9,7,8,5,2,4], # 6
    [1,2,3,3,2,5,5,5,8,7], # 7
    [-9,1,4,6,7,2,2,1,9,1], # 8
    [-9,-9,-9,-9,-9,-9,2,9,4,3], # 9
);


# 一行目のデータの同じ番地同士を足し算する

$a= ( $data1[0][0] + $data2[0][0] ); # 1列目
$b= ( $data1[0][1] + $data2[0][1] ); # 2列目
$c= ( $data1[0][2] + $data2[0][2] ); # 3列目
$d= ( $data1[0][3] + $data2[0][3] ); # 4列目
$e= ( $data1[0][4] + $data2[0][4] ); # 5列目
$f= ( $data1[0][5] + $data2[0][5] ); # 6列目
$g= ( $data1[0][6] + $data2[0][6] ); # 7列目
$h= ( $data1[0][7] + $data2[0][7] ); # 8列目
$i= ( $data1[0][8] + $data2[0][8] ); # 9列目
$j= ( $data1[0][9] + $data2[0][9] ); # 10列目

print $a,"\t", $b,"\t", $c,"\t", $d,"\t", $e,"\t", $f,"\t", $g,"\t", $h,"\t", $i,"\t", $j,"\t","\n";

# 面倒。。。これをあと9回も同じように繰り返し書くとミスをするような気がする。。。
# ループを使おう。