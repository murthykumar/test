#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
open(IN,"/home/srm/file.txt");
#print("Enter the absolute file path :");
#my $file = <STDIN>;
#open(IN,"<$file");
print($0,"\n");
#open(IN,"$ARGV[0]");
=h
while(my $line =<IN>) {
	chomp($line);
	print("$line\n");
}
=cut
my $count =0 ;
my $words =0;
my $char =0;
foreach my $line (<IN>) {
	chomp($line);
	my @ar = split(" ",$line);
	my $a1 = length($line);
	$char = $char + $a1;
	foreach my $k (@ar) {
			$words++;
	}
	
#	print($line,"\n");
	$count++;
}
print("No of lines : $count\n");
print("No of words : $words\n");
print("No of char  : $char\n");
close(IN);
my @var = (1..10);
my $ss = pop(@var);
shift(@var);
push(@var,"END");
unshift(@var,"START");
splice (@var,5,1,"jing");
print("@var\n");
my %data = ('John Paul'=>45, 'Lisa'=> 30,'Kumar'=>40);
while(my ($k,$v) = each %data) {
		print("$k=> $v\n");
}
my @keys = keys %data;
print("@keys\n");
my @array = ("one","two","three","two","three");

my %hash =();
foreach my $k (@array) {
	$hash{$k} = 1;
}
my @dup = keys %hash;
print("@dup\n");

sub unique {
		my $a = shift(@_);
		my %hash = ();
		foreach my $k (@{$a}) {
				$hash{$k} =1;
		}
		my @uni = keys %hash;
}
my @ff = &unique(\@array);
print(@ff,"\n");

for (my $i=1;$i<=$#ARGV;$i++) {
		print($ARGV[$i],"\n");
}

my %a = ();
$a{'b'} =[];
push(@{$a{'b'}},1..6);
$a{'b'}->[6] ={};
$a{'b'}->[6]->{'c'} =();
push(@{$a{'b'}->[6]->{'c'}},8,9,10);
print(Dumper(\%a));

my $str = "000.12.234.23.23";






