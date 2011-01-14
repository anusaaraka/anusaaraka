
(defrule gab0
(declare (salience 5000))
(id-root ?id gab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakabaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gab.clp 	gab0   "  ?id "  bakabaka )" crlf))
)

;"gab","N","1.bakabaka"
;T.V. show hosts have the gift of the gab.
;
(defrule gab1
(declare (salience 4900))
(id-root ?id gab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZabadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gab.clp 	gab1   "  ?id "  badZabadZA )" crlf))
)

;"gab","V","1.badZabadZAnA"
;They gabbed in the T.V.show.
;
