
(defrule retail0
(declare (salience 5000))
(id-root ?id retail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Putakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retail.clp 	retail0   "  ?id "  Putakara )" crlf))
)

;"retail","Adj","1.Putakara"
;He sells his goods at a retail price shop.
;
(defrule retail1
(declare (salience 4900))
(id-root ?id retail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Putakara_bikrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retail.clp 	retail1   "  ?id "  Putakara_bikrI )" crlf))
)

;"retail","N","1.Putakara_bikrI"
;There is a retail grocery shop in our lane.
;
(defrule retail2
(declare (salience 4800))
(id-root ?id retail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Putakara_cIjZez_beca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retail.clp 	retail2   "  ?id "  Putakara_cIjZez_beca )" crlf))
)

;"retail","VT","1.Putakara_cIjZez_becanA"
