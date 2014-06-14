
;@@@ Added by Anita-29.3.2014
;The rounded numbers are listed in the table. [self]
;पूर्णांकित अंको को सूचीबद्ध किया गया है ।
(defrule rounded1
(declare (salience 5000))
(id-root  ?id rounded)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root  ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNAMkiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " rounded.clp  rounded1  " ?id "    pUrNAMkiwa  )" crlf))
)

;##############################default-rule############################
;@@@ Added by Anita-1.4.2014
;The little boy stared at the pregnant woman's rounded belly. [cambridge dictionary]
;छोटे लड़के ने गर्भवती महिला के गोलाकार पेट को घूरा ।
(defrule rounded_default-rule
(declare (salience 0))
(id-root  ?id rounded)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golAkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " rounded.clp  rounded_default-rule  " ?id "    golAkAra  )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_rounded1
(declare (salience 5000))
(id-root  ?id rounded)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root  ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNAMkiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " rounded.clp   sub_samA_rounded1   "   ?id " pUrNAMkiwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_rounded1
(declare (salience 5000))
(id-root  ?id rounded)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root  ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNAMkiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " rounded.clp   obj_samA_rounded1   "   ?id " pUrNAMkiwa )" crlf))
)
