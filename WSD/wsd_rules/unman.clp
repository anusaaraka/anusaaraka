
(defrule unman0
(declare (salience 5000))
(id-root ?id unman)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id unmanned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id karmIxala-rahiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  unman.clp  	unman0   "  ?id "  karmIxala-rahiwa )" crlf))
)

;"unmanned","Adj","1.karmIxala-rahiwa"
;India has developed two unmanned aircrafts indigenously.
;
(defrule unman1
(declare (salience 4900))
(id-root ?id unman)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOruRahIna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unman.clp 	unman1   "  ?id "  pOruRahIna_kara )" crlf))
)

;"unman","VT","1.pOruRahIna_karanA"
;Unman the boy so that he doesnot lose his innocense!
;--"2.hawowsAha karanA"
;It was an unmanning experience.
;
;