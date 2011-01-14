
(defrule whack0
(declare (salience 5000))
(id-root ?id whack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id whacked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id burI_waraha_WakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  whack.clp  	whack0   "  ?id "  burI_waraha_WakA_huA )" crlf))
)

;"whacked","Adj","1.[anOpacArika]burI_waraha_WakA_huA"
; I am totally whacked.
;
(defrule whack1
(declare (salience 4900))
(id-root ?id whack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_kI_cota_yA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whack.clp 	whack1   "  ?id "  jora_kI_cota_yA_mAra )" crlf))
)

;"whack","N","1.jora_kI_cota_yA_mAra"
;He gave the animal a terrible whack.
;
(defrule whack2
(declare (salience 4800))
(id-root ?id whack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_cota_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whack.clp 	whack2   "  ?id "  jora_se_cota_mAra )" crlf))
)

;"whack","VT","1.jora_se_cota_mAranA"
;The packer was hitting a silver foil.
;--"2.hissA"
;Rahul had paid a  whack of his property .
;
