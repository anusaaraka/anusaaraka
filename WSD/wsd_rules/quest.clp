
(defrule quest0
(declare (salience 5000))
(id-root ?id quest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quest.clp 	quest0   "  ?id "  walASa )" crlf))
)

;"quest","N","1.walASa"
;Sages did penance in quest for truth
;
(defrule quest1
(declare (salience 4900))
(id-root ?id quest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quest.clp 	quest1   "  ?id "  walASa )" crlf))
)

;"quest","V","1.walASanA"
;He continued to quest for clues.
;
