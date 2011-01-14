#!/usr/bin/perl
while(<*.html>) {
  $oldname = $_;
#system("python iscii2utf8.py 1 < $oldname > $oldname"."l");
print "$oldname\n";
  s/\.html$/\.htm/;
  rename $oldname, $_;
}

