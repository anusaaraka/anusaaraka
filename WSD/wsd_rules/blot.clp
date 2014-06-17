;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;changed the meaning from 'oJala_ho' to 'CipA_xe'
;Clouds blotted out the sun.[oald]
;बादलों ने सूरज को छिपा दिया
(defrule blot0
(declare (salience 5000))
(id-root ?id blot)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CipA_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blot.clp	blot0  "  ?id "  " ?id1 "  CipA_xe  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  blot.clp	blot0   "  ?id " ko )" crlf)
)
)

;The clouds blotted out the Sun.
;bAxaloM meM sUrya oJala ho gayA

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;She blotted out many words in her speech.
;vaha apane BARaNa meM bahuwa se Sabxa BUla gayI
(defrule blot1
(declare (salience 5000))
(id-root ?id blot)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?id2)
(id-root ?id2 word)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BUla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blot.clp	blot1  "  ?id "  " ?id1 "  BUla_jA  )" crlf))
)


(defrule blot2
(declare (salience 4800))
(id-root ?id blot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blot.clp 	blot2   "  ?id "  xAga )" crlf))
)

;"blot","N","1.xAga/XabbA"
;He made a huge blot on his copybook
;
(defrule blot3
(declare (salience 4700))
(id-root ?id blot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blot.clp 	blot3   "  ?id "  CIla )" crlf))
)

;"blot","VT","1.CIlanA/2.xAgaxAra_karanA/XabbA_lagAnA"
