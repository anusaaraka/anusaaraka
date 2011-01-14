
(defrule drawl0
(declare (salience 5000))
(id-root ?id drawl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gunagunAwe_hue_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drawl.clp 	drawl0   "  ?id "  gunagunAwe_hue_bola )" crlf))
)

;"drawl","N","1.gunagunAwe_hue_bola"
;He has a distinct drawl.
;He spoke in a specific  drawl like texaes do
;
(defrule drawl1
(declare (salience 4900))
(id-root ?id drawl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gunagunAwe_hue_XIre_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drawl.clp 	drawl1   "  ?id "  gunagunAwe_hue_XIre_bola )" crlf))
)

;"drawl","V","1.gunagunAwe_hue_XIre_bolanA"
;He drawled an apology.
;
