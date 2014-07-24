

(defrule tone1
(declare (salience 4900))
(id-root ?id tone)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pUrA_mela_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tone.clp tone1 " ?id "  se_pUrA_mela_ho )" crlf)) 
)

(defrule tone2
(declare (salience 4800))
(id-root ?id tone)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_pUrA_mela_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tone.clp	tone2  "  ?id "  " ?id1 "  se_pUrA_mela_ho  )" crlf))
)



;@@@ Added by Prachi Rathore[24-1-14]
;The language of the article will have to be toned down for the mass market.[oald]
(defrule tone4
(declare (salience 4800))
(id-root ?id tone)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAxA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tone.clp	tone4  "  ?id "  " ?id1 "  sAxA_banA  )" crlf))
)

;@@@ Added by Prachi Rathore[25-1-14]
;a conversational tone.[oald]
;एक बातचीत सम्बन्धी लहजा . 
(defrule tone5
(declare (salience 5500))
(id-root ?id tone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lahajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tone.clp 	tone5   "  ?id "  lahajA )" crlf))
)


;xxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxx
(defrule tone0
(declare (salience 5000))
(id-root ?id tone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwAra_caDZAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tone.clp 	tone0   "  ?id "  uwAra_caDZAva )" crlf))
)


(defrule tone3
(declare (salience 4700))
(id-root ?id tone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tone.clp 	tone3   "  ?id "  baDZA )" crlf))
)

;default_sense && category=verb	baDA	0
;"tone","VT","1.baDAnA"
;Let's tone our muscles.
;
;
