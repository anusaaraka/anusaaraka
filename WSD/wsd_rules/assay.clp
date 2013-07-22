
(defrule assay0
(declare (salience 5000))
(id-root ?id assay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assay.clp 	assay0   "  ?id "  paraKa )" crlf))
)

;"assay","N","1.paraKa{XAwuoM_kI}"
;The blacksmith made an assay of iron ore.
;
(defrule assay1
(declare (salience 4900))
(id-root ?id assay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraKa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assay.clp 	assay1   "  ?id "  paraKa_kara )" crlf))
)

;"assay","V","1.paraKa_karanA{XAwuoM_kI}"
;The blacksmith assayed the iron ore.
;The police assayed the case without much success.(The word "assay" is not used in this context(Meena))
;
