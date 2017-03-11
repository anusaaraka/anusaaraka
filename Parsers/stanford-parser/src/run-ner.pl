undef $/;
$text=<STDIN>;
@lines=split(/\n/,$text);

foreach $line (@lines){
        @words=split(/\s+/,$line);
        $id=1;
        foreach $wd(@words){
                if($wd =~ /([^\/]+)\/ORGANIZATION|LOCATION|PERSON/){
                        $wd =~ /([^\/]+)\/([^\/]+)/;
                        $ner=$1;
                        $nertg=$2;
                        print "(word-wordid-nertype $ner P$id $nertg)\n";
#                       print "(word-nertype    $ner    $nertg)\n";
                }
                $id++;
        }
        print ";~~~~~~~~~~\n"; #Adding separator to split each sentence information
}

