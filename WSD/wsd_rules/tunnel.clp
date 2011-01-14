
(defrule tunnel0
(declare (salience 5000))
(id-root ?id tunnel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suraMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tunnel.clp 	tunnel0   "  ?id "  suraMga )" crlf))
)

;"tunnel","N","1.suraMga"
;The miner went through the tunnel.
;
(defrule tunnel1
(declare (salience 4900))
(id-root ?id tunnel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suraMga_Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tunnel.clp 	tunnel1   "  ?id "  suraMga_Koxa )" crlf))
)

;"tunnel","VT","1.suraMga_KoxanA"
;The criminal escaped after tunnelling out.
;
