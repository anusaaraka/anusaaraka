;@@@ Added by Prachi Rathore[7-2-14]
;She's still in the bathroom, tarting herself up.[cambridge]
; वह अभी भी स्नानघर में  स्वयं को सँवार रही है 
(defrule tart2
(declare (salience 4900))
(id-root ?id tart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sazvAra))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tart.clp 	tart2  "  ?id "  " ?id1 " sazvAra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  tart.clp 	tart2   "  ?id "  ko)" crlf))
)


;@@@ Added by Prachi Rathore[3-3-14]
;a tart remark/comment/reply
;एक कटु जवाब/टिप्पणी. 
(defrule tart3
(declare (salience 5050))
(id-root ?id tart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 comment|reply|remark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tart.clp 	tart3   "  ?id "  katu )" crlf))
)
;xxxxxxxxxxxxxx Default Rules xxxxxxxxxxxxxxxxxx
(defrule tart0
(declare (salience 5000))
(id-root ?id tart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tart.clp 	tart0   "  ?id "  KattA )" crlf))
)

;"tart","Adj","1.KattA"
;The mango has a tart taste.
;
(defrule tart1
(declare (salience 4900))
(id-root ?id tart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tArta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tart.clp 	tart1   "  ?id "  tArta )" crlf))
)

;"tart","N","1.tArta{Pala_kA_banA_huA_CotA_pawalA_keka}"
;She made tart for lunch.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tart3
(declare (salience 5050))
(id-root ?id tart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 comment|reply|remark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tart.clp   sub_samA_tart3   "   ?id " katu )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tart3
(declare (salience 5050))
(id-root ?id tart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 comment|reply|remark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tart.clp   obj_samA_tart3   "   ?id " katu )" crlf))
)
