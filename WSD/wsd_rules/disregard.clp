
(defrule disregard0
(declare (salience 5000))
(id-root ?id disregard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anAxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disregard.clp 	disregard0   "  ?id "  anAxara )" crlf))
)

;"disregard","N","1.anAxara"
;He shows a total disregard for his wife's feelings.
;
(defrule disregard1
(declare (salience 4900))
(id-root ?id disregard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wucCa_jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disregard.clp 	disregard1   "  ?id "  wucCa_jAna )" crlf))
)

;"disregard","VT","1.wucCa_jAnanA"
;Her husbanded disregarded her feelings.
;
