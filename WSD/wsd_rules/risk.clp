
(defrule risk0
(declare (salience 5000))
(id-root ?id risk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KZawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  risk.clp 	risk0   "  ?id "  KZawarA )" crlf))
)

;"risk","N","1.KZawarA"
;There is a risk of going out in the curfew.    
;
(defrule risk1
(declare (salience 4900))
(id-root ?id risk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joKima_uTA))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  risk.clp 	risk1   "  ?id "  joKima_uTA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  risk.clp      risk1   "  ?id " kI )" crlf)
)
)

;"risk","VT","1.joKima_uTAnA"
;Don't take any risk of her life,consult some good doctors.
;
