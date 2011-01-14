
(defrule bayonet0
(declare (salience 5000))
(id-root ?id bayonet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id benata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bayonet.clp 	bayonet0   "  ?id "  benata )" crlf))
)

;"bayonet","N","1.benata"
;Bayonet of rifles are coated with poison.
;
(defrule bayonet1
(declare (salience 4900))
(id-root ?id bayonet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id benata_se_vAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bayonet.clp 	bayonet1   "  ?id "  benata_se_vAra_kara )" crlf))
)

;"bayonet","VT","1.benata_se_vAra_karanA"
;The soldiers were bayoneted.
;
