
(defrule accuse0
(declare (salience 5000))
(id-root ?id accuse)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id accusing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xoRa_lagAwe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  accuse.clp  	accuse0   "  ?id "  xoRa_lagAwe_hue )" crlf))
)

;"accusing","Adj","1.xoRa_lagAwe_hue"
;Her mother's accusing tone offended her.
;
(defrule accuse1
(declare (salience 4900))
(id-root ?id accuse)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id accused )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBiyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  accuse.clp  	accuse1   "  ?id "  aBiyukwa )" crlf))
)

;"accused","N","1.aBiyukwa"
;The accused was acquitted of the charge.
;
;
(defrule accuse2
(declare (salience 4800))
(id-root ?id accuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aropa_lagA))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accuse.clp 	accuse2   "  ?id "  Aropa_lagA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  accuse.clp    accuse2   "  ?id " para )" crlf)
)
)

;default_sense && category=verb	xoRa_lagA	0
;"accuse","VT","1.xoRa_lagAnA"
;The government was accused of incompetence.
;
;
