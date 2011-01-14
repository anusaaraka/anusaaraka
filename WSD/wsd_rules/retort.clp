
(defrule retort0
(declare (salience 5000))
(id-root ?id retort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyuwwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retort.clp 	retort0   "  ?id "  prawyuwwara )" crlf))
)

;"retort","N","1.prawyuwwara"
;Her servant maid bit back a hard retort && left the house.
;
(defrule retort1
(declare (salience 4900))
(id-root ?id retort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyuwwara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retort.clp 	retort1   "  ?id "  prawyuwwara_xe )" crlf))
)

;"retort","VTI","1.prawyuwwara_xenA"
;She retorted heatedly to her boss's remarks.
;
