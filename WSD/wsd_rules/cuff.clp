
(defrule cuff0
(declare (salience 5000))
(id-root ?id cuff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaPZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cuff.clp 	cuff0   "  ?id "  kaPZa )" crlf))
)

;"cuff","N","1.kaPZa"
;The tailor stitched a cuff for the shirt
;
(defrule cuff1
(declare (salience 4900))
(id-root ?id cuff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wamAcA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cuff.clp 	cuff1   "  ?id "  wamAcA_mAra )" crlf))
)

;"cuff","VT","1.wamAcA_mAranA"
;He gave a cuff on his head
;
