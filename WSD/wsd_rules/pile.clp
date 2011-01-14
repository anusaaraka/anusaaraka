
(defrule pile0
(declare (salience 5000))
(id-root ?id pile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pile.clp 	pile0   "  ?id "  Dera )" crlf))
)

(defrule pile1
(declare (salience 4900))
(id-root ?id pile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pile.clp 	pile1   "  ?id "  Dera_laga )" crlf))
)

;"pile","V","1.Dera laganA"
;I have piled up some books for your use.
;Pile plenty of coat on the fire.
;
;