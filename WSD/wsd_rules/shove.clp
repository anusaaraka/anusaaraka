
(defrule shove0
(declare (salience 5000))
(id-root ?id shove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shove.clp 	shove0   "  ?id "  XakkA )" crlf))
)

;"shove","N","1.XakkA"
;He gave a good shove to his car.
;
(defrule shove1
(declare (salience 4900))
(id-root ?id shove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shove.clp 	shove1   "  ?id "  Dakela )" crlf))
)

;"shove","V","1.DakelanA"
;Children were shoving each other while they were playing.
;
