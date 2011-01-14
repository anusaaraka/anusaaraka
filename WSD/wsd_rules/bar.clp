
(defrule bar0
(declare (salience 5000))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id barring )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ke_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bar.clp  	bar0   "  ?id "  ke_alAvA )" crlf))
)

;"barring","Prep","1.ke_alAvA"
;Meals are available at all times,barring Sunday evenings.
;
(defrule bar1
(declare (salience 4900))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarAbaGara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bar.clp 	bar1   "  ?id "  SarAbaGara )" crlf))
)

;"bar","N","1.SarAbaGara"
;I saw Ram walking into the bar.
;--"2.salAKa/SalAkA"
;They fitted bars to their windows for safety.
;--"3.rukAvata"
;Poor health may be a bar to success in life.
;
(defrule bar2
(declare (salience 4800))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko_CodZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bar.clp 	bar2   "  ?id "  ko_CodZa_kara )" crlf))
)

;"bar","Prep","1.ko_CodZa_kara"
;The whole group is here bar two.
;
(defrule bar3
(declare (salience 4700))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id argalA_se_baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bar.clp 	bar3   "  ?id "  argalA_se_baMxa_kara )" crlf))
)

;"bar","V","1.argalA_se_baMxa_karanA"
;They immediately barred the door from inside && switched off the lights.
;--"2.prawibaMXiwa_karanA"
;Troops barred the road so we had to turn back.
;
