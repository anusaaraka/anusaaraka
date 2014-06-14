; Added by manju
; The lawyer pointed out that Clinton did not actually kiss Monica .
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

;@@@ Added by Prachi Rathore[21-11-13]
;The tree's branches kissed the ground below. [M-W]
;पेड की शाखाओं ने के नीचे जमीन को छूअा . 
(defrule kiss1
(declare (salience 6000))
(id-root ?id kiss)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE)(neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id1 ?cat&~PropN)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kiss.clp 	kiss1   "  ?id "  CUA )" crlf)))

;@@@ Added by Prachi Rathore[21-11-13]
;Give your granny a kiss. [CAMBRIDGE]
; आपकी नानी को चूम्बन दीजिए . 
(defrule kiss2
(declare (salience 5000))
(id-root ?id kiss)
(id-cat_coarse ?id noun)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUmbana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kiss.clp 	kiss2   "  ?id "  cUmbana )" crlf))
)
