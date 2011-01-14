
(defrule nettle0
(declare (salience 5000))
(id-root ?id nettle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bicCU_kA_pedZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nettle.clp 	nettle0   "  ?id "  bicCU_kA_pedZa )" crlf))
)

;"nettle","N","1.bicCU_kA_pedZa"
(defrule nettle1
(declare (salience 4900))
(id-root ?id nettle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nettle.clp 	nettle1   "  ?id "  ciDZA )" crlf))
)

;"nettle","VT","1.ciDZAnA"
;He is easily nettled. 
;
