
(defrule howl0
(declare (salience 5000))
(id-root ?id howl)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id howling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mahAna_saPalawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  howl.clp  	howl0   "  ?id "  mahAna_saPalawA )" crlf))
)

;"howling","Adj","1.mahAna saPalawA"
;usane parIkRA meM mahAna saPalawA prApwa kI.
;
(defrule howl1
(declare (salience 4900))
(id-root ?id howl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  howl.clp 	howl1   "  ?id "  jora_se_cIKa )" crlf))
)

;"howl","V","1.jora se cIKanA"
;jaMgala se gIxadZa ke 'howl'(jora se cIKane )kI darAvanI AvAja A rahI WI.
;
;

;@@@ Added by Prachi Rathore[12-2-14]
; The government spokesman was howled down by the audience. 
;सरकारी वक्ता श्रोतागण द्वारा शोर मचा कर रोके गये थे . 
(defrule howl2
(declare (salience 5000))
(id-root ?id howl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Sora_macA_kara_roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " howl.clp 	howl2  "  ?id "  " ?id1 " Sora_macA_kara_roka  )" crlf))
)

;@@@ Added by Prachi Rathore[12-2-14]
;The decision was met with howls of protest from the unions. 
;निर्णय  विरोध के शोर के साथ मिल गया था. 
(defrule howl3
(declare (salience 4900))
(id-root ?id howl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  howl.clp 	howl3   "  ?id " Sora )" crlf))
)
