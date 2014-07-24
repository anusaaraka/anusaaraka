;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;A campaign to ban smoking in public places.[oald]
;सार्वजनिक स्थानों में धूम्रपान पर प्रतिबंध लगाने के लिए एक अभियान.
(defrule ban2
(declare (salience 3000))
(id-root ?id ban)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibaMXa_lagA))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ban.clp 	ban2   "  ?id "  prawibaMXa_lagA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " ban.clp 	ban2   "  ?id " para )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;A campaign to ban smoking in public places.[oald]
;सार्वजनिक स्थानों में धूम्रपान पर प्रतिबंध लगाने के लिए एक अभियान.
(defrule ban3
(declare (salience 3000))
(id-root ?id ban)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibaMXa_lagA))
(assert (kriyA_id-subject_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ban.clp 	ban3   "  ?id "  prawibaMXa_lagA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* " ban.clp 	ban3   "  ?id " para )" crlf)
)
)

;***********************DEFAULT RULES****************************

;"ban","N","1.prawibaMXa"
;The government should put a ban on smoking in public places.
(defrule ban0
(declare (salience 0))
(id-root ?id ban)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ban.clp 	ban0   "  ?id "  prawibaMXa )" crlf))
)



;"ban","VT","1.prawibaMXa_lagAnA"
;The government has banned the use of chemical weapons.[old example]
(defrule ban1
(declare (salience 0))
(id-root ?id ban)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibaMXa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ban.clp 	ban1   "  ?id "  prawibaMXa_lagA )" crlf)
)
)



