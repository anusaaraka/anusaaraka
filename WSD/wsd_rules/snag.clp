
(defrule snag0
(declare (salience 5000))
(id-root ?id snag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTinAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snag.clp 	snag0   "  ?id "  kaTinAI )" crlf))
)

;"snag","N","1.kaTinAI"
;There are several snags in completing this project.
;--"2.nukIlA"
;This knife is so snag.
;
(defrule snag1
(declare (salience 4900))
(id-root ?id snag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snag.clp 	snag1   "  ?id "  Pata )" crlf))
)

;"snag","V","1.PatanA"
;My jeans has snaffed.
;--"2.uXadZanA"
;My pant got snagged by a throny bush.
;
