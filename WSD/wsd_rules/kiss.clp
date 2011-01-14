 (defrule kiss0
 (declare (salience 5000))
 (id-root ?id kiss)
 (id-cat_coarse ?id verb)
 ?mng <-(meaning_to_be_decided ?id)
 =>
 	(retract ?mng)
	(assert (id-wsd_root_mng ?id cUma))
	(if ?*debug_flag* then
	(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kiss.clp    kiss0   "  ?id "  cUma )" crlf)
        (printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi  " ?*wsd_dir* "  kiss.clp    kiss0   " ?id " ko )")
       )
	(assert (kriyA_id-object_viBakwi ?id ko))
 )
; The lawyer pointed out that Clinton did not actually kiss Monica .
; Added by manju
