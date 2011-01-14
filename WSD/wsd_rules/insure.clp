
(defrule insure0
(declare (salience 5000))
(id-root ?id insure)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bImA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insure.clp 	insure0   "  ?id "  bImA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  insure.clp    insure0   "  ?id " kA )" crlf) 
)
)

(defrule insure1
(declare (salience 4900))
(id-root ?id insure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bImA_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insure.clp 	insure1   "  ?id "  bImA_karA )" crlf))
)

;"insure","V","1.bImA_karanA[karAnA]"
;We should insure against accidents.
;
