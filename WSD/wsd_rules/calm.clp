;She tried to calm him down by giving him so many explanations.
;usane use bahuwa se spaRtIkaraNa xekara SAnwa karane kI koSiSa kI
(defrule calm0
(declare (salience 5000))
(id-root ?id calm)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SAMwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " calm.clp	calm0  "  ?id "  " ?id1 "  SAMwa_kara  )" crlf))
)

;Added by Preeti(27-11-13)
;Look, calm down! We'll find her.
;xeKiye, SAMwa ho jAyIE! hama usako DUzDa legeM.
(defrule calm01
(declare (salience 5050))
(id-root ?id calm)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SAMwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " calm.clp	calm01  "  ?id "  " ?id1 "  SAMwa_ho  )" crlf))
)

;"calm","Adj","1.SAnwa"
;After the devastating cyclone in Orissa,the state is now calm.
;orissa meM ujAdane vAlA wUPAna ke bAxa, rAjya aba SAnwa hE.
(defrule calm1
(declare (salience 4900))
(id-root ?id calm)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  calm.clp 	calm1   "  ?id "  SAnwa )" crlf))
)

;"calm","N","1.SAnwi"
;I like the calm of midnight.
;mEM maXyarAwrI kI SAnwi ko pasanxa karawA hUz.
(defrule calm2
(declare (salience 4800))
(id-root ?id calm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  calm.clp 	calm2   "  ?id "  SAnwi )" crlf))
)

;"calm","VT","1.SAnwa_karanA"
;The mother calmed the angry son.
;mAz ne kroXiwa bete ko SAnwa kiyA.
(defrule calm3
(declare (salience 4700))
(id-root ?id calm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  calm.clp 	calm3   "  ?id "  SAnwa_kara )" crlf))
)


