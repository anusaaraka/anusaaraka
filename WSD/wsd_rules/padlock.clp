
(defrule padlock0
(declare (salience 5000))
(id-root ?id padlock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  padlock.clp 	padlock0   "  ?id "  wAlA )" crlf))
)

;"padlock","N","1.wAlA"
(defrule padlock1
(declare (salience 4900))
(id-root ?id padlock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  padlock.clp 	padlock1   "  ?id "  wAlA_lagA )" crlf))
)

;"padlock","V","1.wAlA_lagAnA"
;The gate was security padlock.
;
