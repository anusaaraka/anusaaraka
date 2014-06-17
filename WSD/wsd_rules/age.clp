;@@@ Added by Garima Singh(M.Tech-C.S) 5-dec-2013
;Remodified by Garima Singh.Added 'viSeRya-of_saMbanXI' relation and list of words.
;The age of computers had dawned.
;सङ्गणकों का युग आरम्भ हो चुका था . 
;We live in an age of rapid technological advance.[oald]
;हम तेजी से तकनीकी प्रगती के युग में रहते हैं
(defrule age6
(declare (salience 5000))
(id-root ?id age)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject  ?kri ?id)
;(id-root ?kri dawn)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 computer|science|technology|advance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  age.clp 	age6   "  ?id "  yuga )" crlf))
)


(defrule age0
(declare (salience 5000))
(id-root ?id age)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) science|technology)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  age.clp 	age0   "  ?id "  yuga )" crlf))
)



;Added by Meena(18.01.10)
;The pages of the book were yellowed with age .
(defrule age1
(declare (salience 5000))
(id-root ?id age)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  age.clp       age1   "  ?id "  samaya )" crlf))
)





(defrule age2
(declare (salience 4800))
(id-root ?id age)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id aged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  age.clp  	age2   "  ?id "  vqxXa )" crlf))
)




(defrule age3
(declare (salience 4700))
(id-root ?id age)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id aged )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  age.clp  	age3   "  ?id "  vqxXa )" crlf))
)


;"aged","Adj","1.vqxXa"
;I saw an aged man in the lobby
;



;Salience reduced by Meena(18.01.10)
(defrule age4
(declare (salience 0))
;(declare (salience 4500))
(id-root ?id age)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id umra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  age.clp 	age4   "  ?id "  umra )" crlf))
)





(defrule age5
(declare (salience 4400))
(id-root ?id age)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vayaska_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  age.clp 	age5   "  ?id "  vayaska_ho )" crlf))
)

;default_sense && category=verb	umra_baDZa	0
;"age","V","1.umra_baDZanA"
;The illness has aged him a lot 
;--"2.badZA_ho_jAnA"
;Ram has aged a lot recently
;--"3.purAnA_honA"
;Allow the wine to age for a while
;
;
;LEVEL 
;
;
;Headword : age
;
;Examples --
;"age","N","1.umra"  <--vaya kA honA <--aswiwva meM Ane ke xina se<--umra
;Ram's age is ten years.
;rAma kI umra xasa varRa hE.
;Ram left school at the age of ten years
;rAma ne xasa varRa kI umra meM skUla CodZa xiyA.
;Rajiv died at an early age
;rAjIva kI kama amra meM mqwyu ho gayI
;People in the age group of 20-30 are eligible for the post
;bIsa se wIsa varRa kI umra vAle loga esa paxa ke liye yogya hEM
;Hari has matured with age.
;hari umra ke sAWa paripakva ho gayA
;
;--"2.lambA_samaya"    <--eka kAlAvaXi <--eka umra 
;For ages we waited for the match to begin.
;mEca Suru hone kI hamane eka lambe arse prawIkRA kI.
;
;--"3.yuga"    <--eka kAla <--eka umra 
;Modern age is the age of technology.
;AXunika yuga prOxyogikI kA yuga hE.
;
;
;--"4.yugoM" <--saxiyAz <--samaya kA eka lambA arsA <--eka umra 
;It is an age old custom of that community   
;usa samAja kI yaha eka yagoM purAnI rIwi hE.
;Africa's age long struggle for freedom cannot be forgotten
;aPrIkA kI svawanwrawA ke liye kiyA gayA yugoM lambA saMgrAma BulAyA nahIM jA sakawA.
;                                               
;
;"age","V","1.bUDZA_honA"  <--samaya kA bIwanA<--umra_baDZanA
;The illness has aged him a lot
;bImArI ne use bUDZA kara xiyA hE
;Ram has aged a lot recently
;rAma ina xinoM kAPI bUDZA ho gayA hE.
;
;--"2.purAnA_honA"  <--umra meM baDZanA 
;Allow the wine to age for a while
;vAina ko kuCa purAnA hone xo.
;
;"aged","Adj","1.vqxXa"  <--badZI umra ke
;I saw an aged man in the lobby
;    
;    
;                                                                     
;     sUwra : umra` 
;     
;
;
