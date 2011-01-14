
(defrule captain0
(declare (salience 5000))
(id-root ?id captain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapwAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  captain.clp 	captain0   "  ?id "  kapwAna )" crlf))
)

;"captain","N","1.kapwAna/senApawi/jahAjZa_kA_aXyakRa/"
;The captains have great responsibilities.
;
(defrule captain1
(declare (salience 4900))
(id-root ?id captain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id newqwva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  captain.clp 	captain1   "  ?id "  newqwva_kara )" crlf))
)

;"captain","VT","1.newqwva_karanA"
;Sachin Tendulkar captained the Indian cricket team.
;
