
(defrule bent0
(declare (salience 5000))
(id-root ?id bent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bent.clp 	bent0   "  ?id "  teDZA )" crlf))
)

;"bent","Adj","1.teDZA"
;He connected the tape with a bent wire.
;
(defrule bent1
(declare (salience 4900))
(id-root ?id bent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bent.clp 	bent1   "  ?id "  JukAva )" crlf))
)

;"bent","N","1.JukAva"
;She has strong musical bent.
;
