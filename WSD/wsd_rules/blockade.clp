
(defrule blockade0
(declare (salience 5000))
(id-root ?id blockade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAkAbanxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blockade.clp 	blockade0   "  ?id "  nAkAbanxI )" crlf))
)

;"blockade","N","1.nAkAbanxI"
(defrule blockade1
(declare (salience 4900))
(id-root ?id blockade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAkAbaMxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blockade.clp 	blockade1   "  ?id "  nAkAbaMxI_kara )" crlf))
)

;"blockade","VT","1.nAkAbaMxI_karanA"
