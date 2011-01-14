
(defrule meddle0
(declare (salience 5000))
(id-root ?id meddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id meddling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id haswakRepI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  meddle.clp  	meddle0   "  ?id "  haswakRepI )" crlf))
)

;"meddling","Adj","1.haswakRepI"
;He spoils everything with his meddling.
;
(defrule meddle1
(declare (salience 4900))
(id-root ?id meddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_meM_haswakRepa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meddle.clp 	meddle1   "  ?id "  kAma_meM_haswakRepa_kara )" crlf))
)

;"meddle","V","1.kAma meM haswakRepa karanA"
;He has to meddle when one is working.
;
;