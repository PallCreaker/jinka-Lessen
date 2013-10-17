open (FH, "< ./test.dat") or die;	# データファイルを開く

for ($i=0;$i < 9; $i++ ){
	$line = <FH>;

	#
	stringToArray($line);

	foreach(@data){
        $total += $_;
    }
    $data_count = @data;
    for (my $p = 0; $p < $data_count; $p++) {
    	${"line_".$p} += $data[$p];
    }

    #要素の置換
	$line =~ s/,/\t/g; #/gですべて変換
	print $line." ".$sum."=>".$total,"\n";
}
for (my $j = 0; $j < 8; $j++) {
	print "下＝".${'line_'.$j}."	";
}
print "\n";
close(FH);

sub stringToArray($line) {
	chomp $line;
	@data = split (/,/,$line);
	return @data;
}
