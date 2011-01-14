
(defrule fund0
(declare (salience 5000))
(id-root ?id fund)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUzjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fund.clp 	fund0   "  ?id "  pUzjI )" crlf))
)

;"fund","N","1.pUzjI"
;The prime minister helped the flood victims from his fund.
;
(defrule fund1
(declare (salience 4900))
(id-root ?id fund)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUzjI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fund.clp 	fund1   "  ?id "  pUzjI_lagA )" crlf))
)

;"fund","V","1.pUzjI_lagAnA"
;The project is funded by WHO.
;
