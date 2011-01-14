
(defrule triple0
(declare (salience 5000))
(id-root ?id triple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wigunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  triple.clp 	triple0   "  ?id "  wigunA )" crlf))
)

;"triple","Adj","1.wigunA"
;Add triple amount of water to the flour.
;
(defrule triple1
(declare (salience 4900))
(id-root ?id triple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wigunA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  triple.clp 	triple1   "  ?id "  wigunA_kara )" crlf))
)

;"triple","VT","1.wigunA_karanA"
;The farmer had to triple his produce.
;
