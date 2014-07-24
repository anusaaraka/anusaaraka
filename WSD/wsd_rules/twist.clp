

;Added by Meena(25.1.11)
;The letter was clearly the product of a twisted mind. 
(defrule twist0
(declare (salience 5000))
(id-root ?id twist)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id twisted)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twist.clp     twist0   "  ?id "  vikqwa )" crlf))
)



(defrule twist1
(declare (salience 5000))
(id-root ?id twist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twist.clp 	twist1   "  ?id "  GumAva )" crlf))
)

;"twist","N","1.GumAva"
;He broke the handle with a violent twist.
;


;Meaning modified by Meena(25.1.11)
(defrule twist2
(declare (salience 4900))
(id-root ?id twist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moda))
;(assert (id-wsd_root_mng ?id muda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twist.clp 	twist2   "  ?id "  moda )" crlf))
)

;"twist","VT","1.mudanA"
;He twisted his head round to speak to his friend.
;--"2.gUWanA"
;Twist the creeper into the arch.
;--"3.vikqwa_karanA"
;He twisted his face after eating bittergourd.
;--"4.lipatanA"
;The nurse twisted the bandage round her arm.
;--"5.miWyA_arWa_xenA"
;The papers twisted everything.
;

;@@@ Added by Prachi Rathore[7-2-14]
;I twisted off the lid and looked inside.[oald]
;मैंने ढक्कन खोला और अन्दर देखा . 
(defrule twist3
(declare (salience 5000))
(id-root ?id twist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " twist.clp 	twist3  "  ?id "  " ?id1 "  Kola )" crlf))
)
