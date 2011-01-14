
(defrule numb0
(declare (salience 5000))
(id-root ?id numb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  numb.clp 	numb0   "  ?id "  sunna )" crlf))
)

;"numb","Adj","1.sunna"
;His fingers became numb due to the cold.
;
(defrule numb1
(declare (salience 4900))
(id-root ?id numb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunna_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  numb.clp 	numb1   "  ?id "  sunna_kara_xe )" crlf))
)

;"numb","VT","1.sunna_kara_xenA"
;The shock numbed her senses.
;
