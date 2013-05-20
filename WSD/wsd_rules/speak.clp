
(defrule speak0
(declare (salience 5000))
(id-root ?id speak)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id spoke )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wIlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  speak.clp  	speak0   "  ?id "  wIlI )" crlf))
)

;"spoke","N","1.wIlI{sAikila_iwyAxi_kI}"
;The ball hit so hard that almost all spokes are broken.
;
(defrule speak1
(declare (salience 4900))
(id-root ?id speak)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id spoke )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bola))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  speak.clp  	speak1   "  ?id "  bola )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  speak.clp      speak1   "  ?id " yA )" crlf))
)

;"spoke","V","1.bolA"
;The words you spoke are not liked by anyone.
;
(defrule speak2
(declare (salience 4800))
(id-root ?id speak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  speak.clp 	speak2   "  ?id "  bola )" crlf))
)

;default_sense && category=verb	bAwacIwa kara	0
;"speak","V","1.bAwacIwa karanA"
;He spoke to me regarding my studies.
;--"2.bolanA"
;He speaks well on this topic.
;
;LEVEL 
;Headword : speak
;
;Examples  -- 
;
;"speak","V","bolanA"
;Speak clearly
;spaRta bolo
;Do you speak English?
;kyA wuma aMgrejI bolawe ho?
;--"2.BARaNa_xenA"-bolanA
;He spoke for forty minutes at the   conference
;usane saBA meM cAlIsa minata BARaNa xiyA 
;--"3.bAwacIwa_karanA"-bolanA
;I was speaking to him only yesterday
;mEneM kala hI usase kala hI bAwa kara rahA WA.
;
;vyAKyA - uparyukwa vAkya 4.meM bAwacIwa_karane kA wAwparya hE ki Apasa me bolanA  
;
;sUwra : bolanA`
