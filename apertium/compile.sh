#Preparing Morph bin file
xsltproc buscaPar.xsl apertium-en-hi.en.metadix | uniq > tmp1gen.xsl
xsltproc tmp1gen.xsl apertium-en-hi.en.metadix >en-hi.dixtmp1
rm tmp1gen.xsl
apertium-validate-dictionary en-hi.dixtmp1
lt-comp lr en-hi.dixtmp1 en.morf.bin

#Preparing Morph for multiword
xsltproc buscaPar.xsl apertium-en-hi.en-multiword.metadix | uniq > tmp1gen.xsl
xsltproc tmp1gen.xsl apertium-en-hi.en-multiword.metadix >en-hi.dixtmp1
rm tmp1gen.xsl
apertium-validate-dictionary en-hi.dixtmp1
lt-comp lr en-hi.dixtmp1 en-multiword.morf.bin

#bilingual dictionary containing multiword
apertium-validate-dictionary  apertium-en-hi.en-hi-multiword.dix     
xsltproc translate-to-default-equivalent.xsl  apertium-en-hi.en-hi-multiword.dix >tmpen-hi.autobil.dix   
lt-comp lr  tmpen-hi.autobil.dix en-hi-multiword.autobil.bin       
rm tmpen-hi.autobil.dix


#bilingual dictionary
apertium-validate-dictionary  apertium-en-hi.en-hi.dix     
xsltproc translate-to-default-equivalent.xsl  apertium-en-hi.en-hi.dix >tmpen-hi.autobil.dix   
lt-comp lr  tmpen-hi.autobil.dix en-hi.autobil.bin       
rm tmpen-hi.autobil.dix

#making empty t1x file for multiword matching
apertium-validate-transfer en-hi-empty.t1x
apertium-preprocess-transfer en-hi-empty.t1x en-hi-empty.t1x.bin



#Preparing t1x.bin file

apertium-validate-transfer en-hi.t1x
apertium-preprocess-transfer en-hi.t1x en-hi.t1x.bin

gcc -g -o tagger.out tagger.c 
