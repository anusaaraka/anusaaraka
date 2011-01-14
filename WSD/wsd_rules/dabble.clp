
(defrule dabble0
(declare (salience 5000))
(id-root ?id dabble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI_DaMga_se_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dabble.clp 	dabble0   "  ?id "  UparI_DaMga_se_kara )" crlf))
)

;"dabble","VI","1.UparI_DaMga_se_karanA"
;She dabbles in astronomy
;
(defrule dabble1
(declare (salience 4900))
(id-root ?id dabble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bigo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dabble.clp 	dabble1   "  ?id "  Bigo )" crlf))
)

;"dabble","VT","1.BigonA/sAnanA"
;She dabbled in the water as she could not swim.
;--"2.KilavAdZa_karanA"
;My friend only dabbles in painting, by profession she is a journalist.
;
