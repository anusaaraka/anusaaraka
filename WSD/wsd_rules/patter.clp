
(defrule patter0
(declare (salience 5000))
(id-root ?id patter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wadZawadZAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patter.clp 	patter0   "  ?id "  wadZawadZAhata )" crlf))
)

;"patter","N","1.wadZawadZAhata"
;I heard the patter of their feet as they ran across the road.
;
(defrule patter1
(declare (salience 4900))
(id-root ?id patter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id patapatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patter.clp 	patter1   "  ?id "  patapatA )" crlf))
)

;"patter","VTI","1.patapatAnA"
;The rain pattered on the roof all night long.
;--"2.badZabadZAnA"
;He needs no excuse to patter about his achievements.
;--"3.halke-Pulake_kaxama_se_calanA"
;She pattered along the corridor in her bare feet.
;
