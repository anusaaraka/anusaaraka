
(defrule shin0
(declare (salience 5000))
(id-root ?id shin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shin.clp 	shin0   "  ?id "  nalI )" crlf))
)

;"shin","N","1.nalI/narahara"
;The scooters wheel smashed into my shin.
;
(defrule shin1
(declare (salience 4900))
(id-root ?id shin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shin.clp 	shin1   "  ?id "  caDZa )" crlf))
)

;"shin","V","1.caDZanA"
;I will shin up the ladder to reach the upper floor.
;
