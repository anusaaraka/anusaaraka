
(defrule yawn0
(declare (salience 5000))
(id-root ?id yawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jazBAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yawn.clp 	yawn0   "  ?id "  jazBAI )" crlf))
)

;"yawn","N","1.jazBAI/UzGanA"
;The history class was a big yawn from start to finish.
;
(defrule yawn1
(declare (salience 4900))
(id-root ?id yawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jazBAI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yawn.clp 	yawn1   "  ?id "  jazBAI_le )" crlf))
)

;"yawn","V","1.jazBAI_lenA"
;She yawns while sitting idle.
;
