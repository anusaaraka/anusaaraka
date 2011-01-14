
(defrule evict0
(declare (salience 5000))
(id-root ?id evict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bexaKala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evict.clp 	evict0   "  ?id "  bexaKala_kara )" crlf))
)

;"evict","V","1.bexaKala_karanA^nikAla_xenA"
(defrule evict1
(declare (salience 4900))
(id-root ?id evict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bexaKala_karana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evict.clp 	evict1   "  ?id "  bexaKala_karana )" crlf))
)

;"evict","VT","1.bexaKala_karana"
;They were evicted from the house.
;
