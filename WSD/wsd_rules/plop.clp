
(defrule plop0
(declare (salience 5000))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CapAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop0   "  ?id "  CapAka )" crlf))
)

;"plop","N","1.CapAka"
;The small boy hurled small stones in to water to hear && enjoy the plop.
;
(defrule plop1
(declare (salience 4900))
(id-root ?id plop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CapAka_kI_Xvani_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plop.clp 	plop1   "  ?id "  CapAka_kI_Xvani_kara )" crlf))
)

;"plop","V","1.CapAka_kI_Xvani_karanA"
;While bathing the child ploped the water.
;
