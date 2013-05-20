
(defrule hand0
(declare (salience 5000))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id handed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hAWoM_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hand.clp  	hand0   "  ?id "  hAWoM_vAlA )" crlf))
)

;"handed","Adj","1.hAWoM vAlA"
;vaha KAlI"handed"hE 
;
;
(defrule hand1
(declare (salience 4900))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id handed )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
;(assert (id-H_vib_mng ?id ed_en)) ;Suggested by Sukhada(20-05-13)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  hand.clp  	hand1   "  ?id "  xe )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  hand.clp       hand1   "  ?id " ed_en)" crlf))
))

(defrule hand2
(declare (salience 4800))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hand.clp	hand2  "  ?id "  " ?id1 "  Age_baDZA  )" crlf))
)

;One generation handed down to another
;eka pIDZI xUsarI pIDZI ko Age baDZAwI hE
(defrule hand3
(declare (salience 4700))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hand.clp	hand3  "  ?id "  " ?id1 "  xe  )" crlf))
)

;Please hand in this book to my teacher.
;kqpyA yaha kiwAba mere SikRaka ko xe xenA
(defrule hand4
(declare (salience 4600))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hand.clp	hand4  "  ?id "  " ?id1 "  xe  )" crlf))
)

;Please hand in this book to my teacher.
;kqpyA yaha kiwAba mere SikRaka ko xe xenA
(defrule hand5
(declare (salience 4500))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hand.clp	hand5  "  ?id "  " ?id1 "  xe  )" crlf))
)

;Please hand in this book to my teacher.
;kqpyA yaha kiwAba mere SikRaka ko xe xenA
(defrule hand6
(declare (salience 4400))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hand.clp	hand6  "  ?id "  " ?id1 "  xe  )" crlf))
)

;Please hand in this book to my teacher.
;kqpyA yaha kiwAba mere SikRaka ko xe xenA
(defrule hand7
(declare (salience 4300))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hand.clp 	hand7   "  ?id "  hAWa )" crlf))
)

;"hand","N","1.hAWa"
;My hand is clean .
;merA hAWa sAPa hE .
;--"2.GadZI_kI_suI"
;He broke the clock's hands.
;usane GadZI kI suI wodZa xI.
;
(defrule hand8
(declare (salience 4200))
(id-root ?id hand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hand.clp 	hand8   "  ?id "  xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hand.clp      hand8   "  ?id " ko )" crlf)
)
)

;"hand","V","1.xenA"
;The tenant handed the house keys to the landlord .
;kirAyexAra ne Gara kI cAbiyAz makAnamAlika ko xe xIM . 
;
