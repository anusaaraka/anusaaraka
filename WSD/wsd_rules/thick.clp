
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

;@@@ Added by Prachi Rathore[1-4-14]
;The effect will be ruined if the paint is too thick.[oald]
;प्रभाव नष्ट हो जाएगा यदि रङ्ग ज्यादा ही गाडा है . 
(defrule thick3
(declare (salience 5100))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 paint|soup)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thick.clp 	thick3   "  ?id "  gAdA )" crlf))
)


;@@@ Added by Prachi Rathore[1-4-14]
;The plane crashed in thick fog.[oald]
;Thick smoke.[oald]
;Thick cloud covered the sky.[oald]
;घने बादलों ने आसमान ढका . 
(defrule thick4
(declare (salience 5100))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 fog|smoke|cloud)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thick.clp 	thick4   "  ?id "  GanA )" crlf))
)

;@@@ Added by Prachi Rathore[1-4-14]
;His voice was thick with emotion.[oald]
;उसकी आवाज भावना के साथ भारी हो गयी थी . 
(defrule thick5
(declare (salience 5100))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(viSeRya-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thick.clp 	thick5   "  ?id "  BArI )" crlf))
)


;@@@ Added by Prachi Rathore[1-4-14]
;You seem to be very thick with the boss![oald]
;आप बॉस के साथ अत्यंत घनिष्ठ प्रतीत होते हैं! 
(defrule thick6
(declare (salience 5200))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(viSeRya-with_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaniRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thick.clp 	thick6   "  ?id "  GaniRTa )" crlf))
)


;@@@ Added by Prachi Rathore[1-4-14]
;
;"thick","N","1.maXya_meM"
;We were in the thick of the talk.[ols sentence]
;
(defrule thick7
(declare (salience 5100))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXya_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thick.clp 	thick7   "  ?id "  maXya_meM )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_thick4
(declare (salience 5100))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 fog|smoke|cloud)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " thick.clp   sub_samA_thick4   "   ?id " GanA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_thick4
(declare (salience 5100))
(id-root ?id thick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 fog|smoke|cloud)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " thick.clp   obj_samA_thick4   "   ?id " GanA )" crlf))
)
