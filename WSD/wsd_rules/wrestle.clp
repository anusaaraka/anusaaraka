
(defrule wrestle0
(declare (salience 5000))
(id-root ?id wrestle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wrestling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kuSwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wrestle.clp  	wrestle0   "  ?id "  kuSwI )" crlf))
)

;"wrestling","N","1.kuSwI"
;We watched a wrestling match.
;
(defrule wrestle1
(declare (salience 4900))
(id-root ?id wrestle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuSwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrestle.clp 	wrestle1   "  ?id "  kuSwI )" crlf))
)

;"wrestle","N","1.kuSwI"
;The wrestle was watched by the villagers.
;--"2.kadA_saMGarRa"
;It was a wrestle by the two ruling parties.
;
(defrule wrestle2
(declare (salience 4800))
(id-root ?id wrestle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuSwI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrestle.clp 	wrestle2   "  ?id "  kuSwI_kara )" crlf))
)

;"wrestle","VT","1.kuSwI_karanA"
;The lonely housewife wrestled with the dacoit.
;
