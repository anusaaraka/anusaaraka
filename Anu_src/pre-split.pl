undef $/;
$str=<STDIN>;
$str  =~ s/\*EOS\*\n+\*Original/\*EOS\n;~~~~~~~~~~\n\*Original/g;
print $str;
