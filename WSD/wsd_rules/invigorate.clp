
(defrule invigorate0
(declare (salience 5000))
(id-root ?id invigorate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id invigorating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id balavarXaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  invigorate.clp  	invigorate0   "  ?id "  balavarXaka )" crlf))
)

;"invigorating","Adj","1.balavarXaka"
;Invigorating herbs are good for health.
;
(defrule invigorate1
(declare (salience 4900))
(id-root ?id invigorate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balavarXana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invigorate.clp 	invigorate1   "  ?id "  balavarXana_kara )" crlf))
)

;"invigorate","VT","1.balavarXana_karanA"
;Yoga invigorates health .
;
;