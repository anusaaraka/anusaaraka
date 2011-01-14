
(defrule attribute0
(declare (salience 5000))
(id-root ?id attribute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attribute.clp 	attribute0   "  ?id "  guNa )" crlf))
)

;"attribute","N","1.guNa/BAva"
;His greatest attribute was his helpful nature.
;
(defrule attribute1
(declare (salience 4900))
(id-root ?id attribute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sambanXa_TaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attribute.clp 	attribute1   "  ?id "  sambanXa_TaharA )" crlf))
)

;"attribute","VT","1.sambanXa_TaharAnA"
;Attribute their illness to their poor diets.
;
