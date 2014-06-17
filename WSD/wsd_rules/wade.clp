;@@@ Added by Pramila(BU) on 25-02-2014
;He waded through a dull novel.   ;shiksharthi
;उसने एक नीरस उपन्यास जैसे-तैसे पढ़ डाला.
(defrule wade1
(declare (salience 5000))
(id-root ?id wade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-through_saMbanXI  ?id ?id1)
(id-root ?id1 novel|book|magazine)
(id-word =(+ ?id 1) through) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) jEse-wEse_paDZa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wade.clp	wade1  "  ?id "  " (+ ?id 1) "  jEse-wEse_paDZa_dAla  )" crlf))
)

(defrule wade2
(declare (salience 100))
(id-root ?id wade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTinAI_pUrvaka_pExala_pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wade.clp 	wade2   "  ?id "  kaTinAI_pUrvaka_pExala_pAra_kara )" crlf))
)

;"wade","V","1.kaTinAI_pUrvaka_pExala_pAra_karanA{pAnI,kIcadZa,rewa...}"
(defrule wade3
(declare (salience 4900))
(id-root ?id wade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExala_pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wade.clp 	wade3   "  ?id "  pExala_pAra_kara )" crlf))
)

;"wade","VTI","1.pExala_pAra_karanA"
;He waded through waters
;
