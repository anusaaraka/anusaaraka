
(defrule opposite0
(declare (salience 5000))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite0   "  ?id "  viroXI )" crlf))
)

(defrule opposite1
(declare (salience 4900))
(id-root ?id opposite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opposite.clp 	opposite1   "  ?id "  ke_sAmane )" crlf))
)

;"opposite","Prep","1.ke_sAmane"
;I sat opposite to him during the meal.
;
;
