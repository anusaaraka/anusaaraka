
(defrule mark0
(declare (salience 5000))
(id-root ?id mark)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id marked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id suspaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mark.clp  	mark0   "  ?id "  suspaRta )" crlf))
)

;"marked","Adj","1.suspaRta"
;He has made a marked contribution to this field.
;
;
(defrule mark1
(declare (salience 4900))
(id-root ?id mark)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 reKAMkiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mark.clp	mark1  "  ?id "  " ?id1 "  reKAMkiwa_kara  )" crlf))
)

;
;
(defrule mark2
(declare (salience 4800))
(id-root ?id mark)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cunAva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mark.clp	mark2  "  ?id "  " ?id1 "  cunAva_kara  )" crlf))
)

;Can you please mark out the shirts you chose?
;
;gadZabadZI_karanA	0
;Will you stop messing around in your room?
;

;(defrule mark3
;(declare (salience 4700))
;(id-root ?id mark)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id niSAna))
;)

;"mark","N","1.niSAna"
;There was a coffee mark on my white skirt.
;--"2.aMka"
;He got the highest marks in maths.
;--"3.niSAnA"
;The arrow missed it's mark.
;--"4.CApa"
;The war has left it's mark on the country.
;--"5.mahawwva"
;
(defrule mark3
(declare (salience 6000))
(id-root ?id mark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cihniwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mark.clp 	mark3   "  ?id "  cihniwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  mark.clp      mark3   "  ?id " ko )" crlf)
)
)

;"mark","V","1.para_niSAna_lagAnA"
;Mark the items which have been checked.
;--"2.para_XyAna_xenA"
;You will be in trouble ,just mark my words.


(defrule mark4
;(declare (salience 5200))
(declare (salience 5100)) 
(id-root ?id mark) 
?mng <-(meaning_to_be_decided ?id) 
(id-root ?id1 make|score|get)
(kriyA-object ?id1 ?id) 
=> 
(retract ?mng) 
(assert (id-wsd_root_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mark.clp 	mark4   "  ?id "  aMka )" crlf))
) 


(defrule mark5
(declare (salience 5200)) 
(id-root ?id mark) 
?mng <-(meaning_to_be_decided ?id)
(or (samAsa_viSeRya-samAsa_viSeRaNa =(- ?id 1) ?id)(viSeRya-det_viSeRaNa ?id =(- ?id 1))) 
=> 
(retract ?mng) 
(assert (id-wsd_root_mng ?id niSAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mark.clp 	mark5   "  ?id "  niSAna )" crlf)) 
) 


(defrule mark6
(declare (salience 5200)) 
(id-root ?id  mark) 
?mng <-(meaning_to_be_decided ?id) 
(id-word =(- ?id 1)  red|black|white|yellow|dirty) 
(viSeRya-viSeRaNa ?id =(- ?id 1)) 
=> 
(retract ?mng) 
(assert (id-wsd_root_mng ?id niSAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mark.clp 	mark6   "  ?id "  niSAna )" crlf)))

(defrule mark7
(declare (salience 5100))
(id-root ?id  mark)
?mng <-(meaning_to_be_decided ?id)
(RaRTI_viSeRya-RaRTI_viSeRaNa  ?id  =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAna)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mark.clp      mark7   "  ?id "  niSAna )" crlf)))


(defrule mark8
(declare (salience 5100)) 
(id-root ?id mark) 
?mng <-(meaning_to_be_decided ?id) 
(id-word ?id marked ) 
(viSeRya-viSeRaNa =(+ ?id 1) ?id) 
=> 
(retract ?mng) 
(assert (id-wsd_word_mng ?id suspaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mark.clp  	mark8   "  ?id "  suspaRta )" crlf)) 
) 


(defrule mark9
(declare (salience 5200))
(id-root ?id mark)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) as)
(viSeRya-of_viSeRaNa ?id =(+ ?id 2))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 2) wOra_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  mark.clp       mark9   "  ?id "  " (- ?id 2)" wOra_para )" crlf)
)
)

