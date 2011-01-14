
(defrule thick0
(declare (salience 5000))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id motA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thick.clp 	thick0   "  ?id "  motA )" crlf))
)

;"thick","Adj","1.motA"
;It is a thick pencil.
;--"2.GanA"
;Don't go in the thick forest lest  you get lost.
;--"3.gADA"
;It is a thick soup.
;
(defrule thick1
(declare (salience 4900))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thick.clp 	thick1   "  ?id "  lagAwAra )" crlf))
)

;"thick","Adv","1.lagAwAra"
;Children were playing with the snow balls ,lying thick on the ground.
;
(defrule thick2
(declare (salience 4800))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXya_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thick.clp 	thick2   "  ?id "  maXya_meM )" crlf))
)

;"thick","N","1.maXya_meM"
;We were in the thick of the talk.
;
