

;The rule commented by Meena(15.2.11)
;(defrule vacant1
;(declare (salience 5000))
;(id-root ?id vacant)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) look )
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id sunya))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacant.clp      vacant1   "  ?id "  sunya )" crlf))
;)
;Added by priyadarsani (10.12.09)
;she had a vacant look on her face.
;


;Added by Meena(15.2.11)
;She had large vacant brown eyes.
(defrule vacant01
(declare (salience 5001))
(id-root ?id vacant)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-word ?id1 eyes)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBivykwirahiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacant.clp      vacant01   "  ?id "  aBivykwirahiwa )" crlf))
)


;Added by Meena(15.2.11)
;She had a vacant look on her face.
;She had a vacant expression on her face.
(defrule vacant02
(declare (salience 5000))
(id-root ?id vacant)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 look|expression)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SUnyawA_kA_BAva))
;(assert (id-wsd_root_mng ?id vicArahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacant.clp      vacant02   "  ?id "  vicArahIna )" crlf))
)




;Modified by Meena(15.2.11)
;The hospital has no vacant beds.
(defrule vacant2
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id vacant)
?mng <-(meaning_to_be_decided ?id)
;(id-root =(+ ?id 1) bed )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacant.clp      vacant2   "  ?id "  KAlI )" crlf))
)
;Add by priyadarsani (10.12.09)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_vacant01
(declare (salience 5001))
(id-root ?id vacant)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 eyes)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBivykwirahiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " vacant.clp    sub_samA_vacant01 " ?id " aBivykwirahiwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_vacant01
(declare (salience 5001))
(id-root ?id vacant)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 eyes)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBivykwirahiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " vacant.clp   obj_samA_vacant01" ?id " aBivykwirahiwa )" crlf))
)
