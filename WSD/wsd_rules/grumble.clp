
(defrule grumble0
(declare (salience 5000))
(id-root ?id grumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAyawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grumble.clp 	grumble0   "  ?id "  SikAyawa )" crlf))
)

;"grumble","N","1.SikAyawa"
;The grumble of the maid servant irritates me.
;
(defrule grumble1
(declare (salience 4900))
(id-root ?id grumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaMwoRapUrvaka_kuCa_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grumble.clp 	grumble1   "  ?id "  asaMwoRapUrvaka_kuCa_kaha )" crlf))
)

;"grumble","V","1.asaMwoRapUrvaka_kuCa_kahanA"
;The waiter grumbled for not getting any tip.
;
