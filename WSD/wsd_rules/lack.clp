
(defrule lack0
(declare (salience 5000))
(id-root ?id lack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lack.clp 	lack0   "  ?id "  kamI )" crlf))
)

;"lack","N","1.kamI"
;He suffers from a lack of confidence.
;
(defrule lack1
(declare (salience 4900))
(id-root ?id lack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamI_honA))
(assert (kriyA_id-subject_viBakwi ?id meM))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lack.clp 	lack1   "  ?id "  kamI_honA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  lack.clp      lack1   "  ?id " kI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  lack.clp      lack1   "  ?id "  meM )" crlf))
)

;"lack","V","1.kamI_honA"
;He lacks courage to face the audience.
;
