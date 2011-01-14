
(defrule reason0
(declare (salience 5000))
(id-root ?id reason)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id reasoning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id warka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reason.clp  	reason0   "  ?id "  warka )" crlf))
)

;given_word=reasoning && word_category=noun	$warka_viwarka)

;"reasoning","N","1.warka_viwarka"
;Her reasoning on this point is correct. 
;
(defrule reason1
(declare (salience 4900))
(id-root ?id reason)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reason.clp 	reason1   "  ?id "  kAraNa )" crlf))
)

(defrule reason2
(declare (salience 4800))
(id-root ?id reason)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reason.clp 	reason2   "  ?id "  warka_kara )" crlf))
)

;"reason","VTI","1.warka_karanA"
;She reasoned that if she started at 5am she would be there by noon.
;
;