
(defrule reckon0
(declare (salience 5000))
(id-root ?id reckon)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id reckoning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kula_xeya_KarcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reckon.clp  	reckon0   "  ?id "  kula_xeya_KarcA )" crlf))
)

;"reckoning","N","1.kula_xeya_KarcA"
;There will be a heavy reckoning to pay.   
;
(defrule reckon1
(declare (salience 4900))
(id-root ?id reckon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reckon.clp 	reckon1   "  ?id "  mAna )" crlf))
)

;default_sense && category=verb	gina	0
;"reckon","VTI","1.ginanA"
;Interest is reckoned from the date of lending.
;Hire charges are reckoned from the date of delivery.
;--"2.nirBara_honA"   
;In old days people reckoned on their son's help.  
;--"3.mAnanA"
;I reckon she is smart enough to handle the job.
;
;LEVEL 
;Headword : reckon
;
;Examples --
;
;"reckon","V","1.mAnanA/samaJanA" 
;He is reckoned among our best friends.
;hamAre saBI miwroM meM usakI ginawI ucca koti meM howI hE.
;I rekcon that car will be ready by sunday evening.
;mEM samaJawA hUz ki kAra iwavAra kI SAma waka wEyAra ho jAegI.
;I reckon him as a scholar.
;mEM use vixvAna mAnawA hUz.
;--"2.ASA_karanA"
;I reckon that she will finish writing this paper by week end.
;mEM ASA karawA hUz ki vaha sapwAha aMwa waka yaha pepara liKanA Kawama kara legI.
;--"3.hisAba lagAnA"
;You did not reckon the number of boys present. 
;wumane upasWiwa ladZakoM kI saMKyA kI ginawI nahIM kI.
;
;
;'reckon' kA arWa 'mAnanA' se jodZA jA sakawA hE. isameM 'mAnanA' se baDZa kara BI kuCa BAva hE jisameM 'ASA_karanA' SAmila ho jAwA hE. 'hisAba_lagAnA' kuCa alaga lagawA hE. SAyaxa ASA ke sAWa usa ASA ke hone na hone kA hisAba judZa jAwA ho.
;
;anwarnihiwa sUwra ; 
;
;mAnanA -- samaJanA -- ASA_raKanA--hisAba lagAnA
;
;              
;sUwra : mAnanA[_>hisAba_lagAnA] 
;
; 
