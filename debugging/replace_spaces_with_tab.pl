while(<STDIN>){
       if($_ =~ /\(printout/){
               $_ =~ s/\s+/\t/g;
               print "$_\n";
       }
       else { print $_;}
}
