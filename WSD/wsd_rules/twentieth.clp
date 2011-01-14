
(defrule twentieth0
(declare (salience 5000))
(id-root ?id twentieth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIsavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twentieth.clp 	twentieth0   "  ?id "  bIsavAz )" crlf))
)

;"twentieth","Adj","1.bIsavAz"
;Her twentieth birthday falls on this Thursday.
;
(defrule twentieth1
(declare (salience 4900))
(id-root ?id twentieth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIsavAz_aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twentieth.clp 	twentieth1   "  ?id "  bIsavAz_aMSa )" crlf))
)

;"twentieth","N","1.bIsavAz_aMSa"
