
(defrule piddle0
(declare (salience 5000))
(id-root ?id piddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id piddling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mahawwvahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  piddle.clp  	piddle0   "  ?id "  mahawwvahIna )" crlf))
)

;"piddling","Adj","1.mahawwvahIna/nagaNya"
;My father gave me a piddling amount of money.
;
(defrule piddle1
(declare (salience 4900))
(id-root ?id piddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peSAba_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piddle.clp 	piddle1   "  ?id "  peSAba_kara )" crlf))
)

;"piddle","V","1.peSAba karanA"
;The baby piddled in the cradle.
;
;