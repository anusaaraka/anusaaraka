
(defrule conjecture0
(declare (salience 5000))
(id-root ?id conjecture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conjecture.clp 	conjecture0   "  ?id "  anumAna )" crlf))
)

;"conjecture","N","1.anumAna"
;Sometimes weather conjectures become true.	
;
(defrule conjecture1
(declare (salience 4900))
(id-root ?id conjecture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conjecture.clp 	conjecture1   "  ?id "  anumAna_kara )" crlf))
)

;"conjecture","V","1.anumAna_karanA"
;Most of the weather predictions are conjectured.
;
