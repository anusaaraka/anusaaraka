
(defrule gratify0
(declare (salience 5000))
(id-root ?id gratify)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanwuRta_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gratify.clp 	gratify0   "  ?id "  sanwuRta_honA )" crlf))
)

(defrule gratify1
(declare (salience 4900))
(id-root ?id gratify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanwuRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gratify.clp 	gratify1   "  ?id "  sanwuRta_kara )" crlf))
)

;"gratify","V","1.sanwuRta_karanA"
;
;
