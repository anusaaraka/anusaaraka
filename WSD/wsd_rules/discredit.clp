
(defrule discredit0
(declare (salience 5000))
(id-root ?id discredit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxanAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discredit.clp 	discredit0   "  ?id "  baxanAmI )" crlf))
)

;"discredit","N","1.baxanAmI"
;Your actions will bring discredit to your name.
;
(defrule discredit1
(declare (salience 4900))
(id-root ?id discredit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxanAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discredit.clp 	discredit1   "  ?id "  baxanAma_kara )" crlf))
)

;"discredit","VT","1.baxanAma_karanA"
;This newspaper story discredits politicians.
;
