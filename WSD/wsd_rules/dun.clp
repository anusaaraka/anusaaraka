
(defrule dun0
(declare (salience 5000))
(id-root ?id dun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuMXalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dun.clp 	dun0   "  ?id "  XuMXalA )" crlf))
)

;"dun","Adj","1.XuMXalA/kAle_raMga_kA"
;The dun && dreary prairie
;She wore a dun raincoat
;
(defrule dun1
(declare (salience 4900))
(id-root ?id dun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wakAjZA_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dun.clp 	dun1   "  ?id "  wakAjZA_karane_vAlA )" crlf))
)

;"dun","N","1.wakAjZA_karane_vAlA/wakAjZA"
(defrule dun2
(declare (salience 4800))
(id-root ?id dun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wakAjZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dun.clp 	dun2   "  ?id "  wakAjZA_kara )" crlf))
)

;"dun","VT","1.wakAjZA_karanA"
;The grocer dunned his customers every day by telephone
;
