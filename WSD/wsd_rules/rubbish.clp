;@@@ Added by Anita ---6.12.2013
;I  forgot to put the rubbish out this morning. [cambridge dictionary]
;मैं आज सुबह कचरा बाहर रखना भूल गई ।
(defrule rubbish1
(declare (salience 500))
(id-root ?id rubbish)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-with_saMbanXI  ? ?id)
(viSeRya-of_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kacarA))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rubbish.clp    rubbish1   "  ?id "  kacarA )" crlf))
)

;@@@ Added by Anita ---6.12.2013
;Put the empty box in the rubbish bin. [cambridge dictionary]
;खाली डिब्बे कचरा कुंडी में डाल दें ।
(defrule rubbish2
(declare (salience 501))
(id-root ?id rubbish)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 bin)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kacarA_kuMdI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rubbish.clp    rubbish2   " ?id " " ?id1 "  kacarA_kuMdI )" crlf))
)

;@@@ Added by Anita ---6.12.2013
;The film was rubbish. (noun) [cambridge dictionary]
;फिल्म बकवास थी । 
(defrule rubbish3
(declare (salience 550))
(id-root ?id rubbish)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 film)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakavAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rubbish.clp    rubbish3   "  ?id "  bakavAsa )" crlf))
)

;###################################default-rule###############################

;@@@ Added by Anita
;The men came to remove the rubbish from the backyard. [old remove.clp sentence]
;आदमी पिछवाड़े से कचरा ले जाने के लिए आया था ।
;I forgot to put the rubbish out this morning. [cambridge dictionary]
;मैं आज सुबह कचरा बाहर रखना भूल गई ।
;Put the empty box in the rubbish bin. [cambridge dictionary]
;खाली डिब्बे कचरा कुंडी में डाल दें ।
;Take the old furniture to the rubbish dump. [cambridge dictionary]
;पुराना फर्नीचर कचरे के मैदान से ले लो ।
(defrule rubbish0
(declare (salience 500))
(id-root ?id rubbish)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kacarA))
;(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rubbish.clp    rubbish0   "  ?id "  kacarA )" crlf))
)
