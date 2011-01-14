
(defrule maroon0
(declare (salience 5000))
(id-root ?id maroon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gADA_BUrA_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maroon.clp 	maroon0   "  ?id "  gADA_BUrA_raMga )" crlf))
)

;"maroon","Adj","1.gADA_BUrA_raMga"
;She was wearing a maroon sweater.
;
(defrule maroon1
(declare (salience 4900))
(id-root ?id maroon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asahAya_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maroon.clp 	maroon1   "  ?id "  asahAya_CodZa )" crlf))
)

;"maroon","V","1.asahAya_CodZanA"
;He was marooned on the road after his car broke down.
;
