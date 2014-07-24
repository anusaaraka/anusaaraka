;@@@ Added by Preeti(25-1-14)
;The teacher reminded us to hand in our compositions at the end of class. [merriam-webster]
;kakRA ke anwa meM SikRaka ne hamAre leKana xene ke liye hameM yAxa xilAyA.
(defrule   composition1
(declare (salience 1050))
(id-root ?id composition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  composition.clp 	composition1   "  ?id "  leKana )" crlf))
)


;@@@ Added by Preeti(25-1-14)
;The children played their own compositions in the concert. [Cambridge Learner’s Dictionary]
;bacce safgIwa goRTI meM unakI apanI gIwa racanAez bajA rahe We .
(defrule   composition2
(declare (salience 1050))
(id-root ?id composition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 play|teach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gIwa_racanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  composition.clp 	composition2   "  ?id "  gIwa_racanA )" crlf))
)

;@@@ Added by Preeti(25-1-14)
;Musical compositions, tunes or songs, find room here. [http://sentence.yourdictionary.com]
;safgIwa racanAez, XuneM yA gAne, yahAz sWAna  pAwe hEM.
(defrule   composition3
(declare (salience 1050))
(id-root ?id composition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1  musical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  composition.clp 	composition3   "  ?id "  racanA )" crlf))
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti(25-1-14)
;Composition of the atmosphere is changing. [http://sentence.yourdictionary.com]
;vAwAvaraNa kI saMracanA baxala rahI hE.
(defrule   composition0
(declare (salience 1000))
(id-root ?id composition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMracanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  composition.clp 	composition0   "  ?id "  saMracanA )" crlf))
)
;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_composition3
(declare (salience 1050))
(id-root ?id composition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1  musical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " composition.clp   sub_samA_composition3   "   ?id " racanA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_composition3
(declare (salience 1050))
(id-root ?id composition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1  musical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " composition.clp   obj_samA_composition3   "   ?id " racanA )" crlf))
)
